USE Airline;
GO

CREATE TABLE DWH.REDEMPTION
(
    Member_ID        VARCHAR(18),
    Feed_Date        DATE,
    Txn_ID           VARCHAR(50),
    Txn_Date         DATE,
    Partner          VARCHAR(100),
    Miles_Redeemed   INT,
    Status           VARCHAR(20),
    Load_Date        DATETIME DEFAULT GETDATE()
);
GO

INSERT INTO DWH.REDEMPTION
(
    Member_ID,
    Feed_Date,
    Txn_ID,
    Txn_Date,
    Partner,
    Miles_Redeemed,
    Status
)
SELECT
    R.Member_ID,
    TRY_CONVERT(DATE, R.Feed_Date, 112),
    J.Txn_ID,
    TRY_CONVERT(DATE, J.Txn_Date, 112),
    J.Partner,
    J.Miles_Redeemed,
    J.Status
FROM RAW.RAW_REDEMPTION R
CROSS APPLY OPENJSON(R.Json_Data, '$.redemptions')
WITH
(
    Txn_ID          VARCHAR(50)  '$.txn_id',
    Txn_Date        VARCHAR(8)   '$.txn_date',
    Partner         VARCHAR(100) '$.partner',
    Miles_Redeemed  INT          '$.miles_redeemed',
    Status          VARCHAR(20)  '$.status'
) J;
GO
