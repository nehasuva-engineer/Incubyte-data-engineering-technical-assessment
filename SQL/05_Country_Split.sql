USE Airline;
GO

WITH Latest_Member AS
(
    SELECT
        *,
        ROW_NUMBER() OVER
        (
            PARTITION BY Member_ID
            ORDER BY Load_Date DESC
        ) AS RN
    FROM STG.STG_MEMBER
)

INSERT INTO DWH.MEMBER_INDIA
SELECT
    Member_Name,
    Member_ID,
    Enrollment_Date,
    Last_Flight_Date,
    Tier_Code,
    Agent_Name,
    State,
    Country,
    Post_Code,
    DOB,
    Active_Member,
    Age,
    Stale_Member,
    Load_Date
FROM Latest_Member
WHERE RN = 1
  AND Country = 'IND';


WITH Latest_Member AS
(
    SELECT
        *,
        ROW_NUMBER() OVER
        (
            PARTITION BY Member_ID
            ORDER BY Load_Date DESC
        ) AS RN
    FROM STG.STG_MEMBER
)

INSERT INTO DWH.MEMBER_USA
SELECT
    Member_Name,
    Member_ID,
    Enrollment_Date,
    Last_Flight_Date,
    Tier_Code,
    Agent_Name,
    State,
    Country,
    Post_Code,
    DOB,
    Active_Member,
    Age,
    Stale_Member,
    Load_Date
FROM Latest_Member
WHERE RN = 1
  AND Country = 'USA';


WITH Latest_Member AS
(
    SELECT
        *,
        ROW_NUMBER() OVER
        (
            PARTITION BY Member_ID
            ORDER BY Load_Date DESC
        ) AS RN
    FROM STG.STG_MEMBER
)

INSERT INTO DWH.MEMBER_CANADA
SELECT
    Member_Name,
    Member_ID,
    Enrollment_Date,
    Last_Flight_Date,
    Tier_Code,
    Agent_Name,
    State,
    Country,
    Post_Code,
    DOB,
    Active_Member,
    Age,
    Stale_Member,
    Load_Date
FROM Latest_Member
WHERE RN = 1
  AND Country = 'CAN';


WITH Latest_Member AS
(
    SELECT
        *,
        ROW_NUMBER() OVER
        (
            PARTITION BY Member_ID
            ORDER BY Load_Date DESC
        ) AS RN
    FROM STG.STG_MEMBER
)

INSERT INTO DWH.MEMBER_PHILIPPINES
SELECT
    Member_Name,
    Member_ID,
    Enrollment_Date,
    Last_Flight_Date,
    Tier_Code,
    Agent_Name,
    State,
    Country,
    Post_Code,
    DOB,
    Active_Member,
    Age,
    Stale_Member,
    Load_Date
FROM Latest_Member
WHERE RN = 1
  AND Country = 'PHIL';


WITH Latest_Member AS
(
    SELECT
        *,
        ROW_NUMBER() OVER
        (
            PARTITION BY Member_ID
            ORDER BY Load_Date DESC
        ) AS RN
    FROM STG.STG_MEMBER
)

INSERT INTO DWH.MEMBER_AUSTRALIA
SELECT
    Member_Name,
    Member_ID,
    Enrollment_Date,
    Last_Flight_Date,
    Tier_Code,
    Agent_Name,
    State,
    Country,
    Post_Code,
    DOB,
    Active_Member,
    Age,
    Stale_Member,
    Load_Date
FROM Latest_Member
WHERE RN = 1
  AND Country = 'AU';
GO
