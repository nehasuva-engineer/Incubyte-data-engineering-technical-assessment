USE Airline;
GO

CREATE TABLE ERR.MEMBER_ERROR
(
    Member_ID       VARCHAR(18),
    Error_Type      VARCHAR(100),
    Error_Message   VARCHAR(500),
    Load_Date       DATETIME DEFAULT GETDATE()
);
GO

-- Mandatory field validation
INSERT INTO ERR.MEMBER_ERROR
(
    Member_ID,
    Error_Type,
    Error_Message
)
SELECT
    Member_ID,
    'MANDATORY_FIELD',
    'Member Name, Member ID or Enrollment Date is missing'
FROM RAW.RAW_MEMBER
WHERE NULLIF(LTRIM(RTRIM(Member_Name)), '') IS NULL
   OR NULLIF(LTRIM(RTRIM(Member_ID)), '') IS NULL
   OR NULLIF(LTRIM(RTRIM(Enrollment_Date)), '') IS NULL;


-- Invalid date validation
INSERT INTO ERR.MEMBER_ERROR
(
    Member_ID,
    Error_Type,
    Error_Message
)
SELECT
    Member_ID,
    'INVALID_DATE',
    'Invalid enrollment date'
FROM RAW.RAW_MEMBER
WHERE Enrollment_Date IS NOT NULL
  AND TRY_CONVERT(DATE, Enrollment_Date, 112) IS NULL;


-- Duplicate Member ID validation
INSERT INTO ERR.MEMBER_ERROR
(
    Member_ID,
    Error_Type,
    Error_Message
)
SELECT
    Member_ID,
    'DUPLICATE_MEMBER',
    'Duplicate Member ID found'
FROM RAW.RAW_MEMBER
GROUP BY Member_ID
HAVING COUNT(*) > 1;


-- Invalid active flag
INSERT INTO ERR.MEMBER_ERROR
(
    Member_ID,
    Error_Type,
    Error_Message
)
SELECT
    Member_ID,
    'INVALID_ACTIVE_FLAG',
    'Active Member flag is invalid'
FROM RAW.RAW_MEMBER
WHERE Active_Member NOT IN ('A', 'I');


-- Invalid redemption
INSERT INTO ERR.MEMBER_ERROR
(
    Member_ID,
    Error_Type,
    Error_Message
)
SELECT
    Member_ID,
    'INVALID_MILES',
    'Miles redeemed cannot be negative'
FROM DWH.REDEMPTION
WHERE Miles_Redeemed < 0;
GO
