USE Airline;
GO

-- Test 1: Staging records should be created
SELECT COUNT(*) AS Staging_Record_Count
FROM STG.STG_MEMBER;


-- Test 2: India member count
SELECT COUNT(*) AS India_Member_Count
FROM DWH.MEMBER_INDIA;


-- Test 3: USA member count
SELECT COUNT(*) AS USA_Member_Count
FROM DWH.MEMBER_USA;


-- Test 4: Redemption records
SELECT COUNT(*) AS Redemption_Count
FROM DWH.REDEMPTION;


-- Test 5: Duplicate Member IDs
SELECT Member_ID, COUNT(*) AS Record_Count
FROM STG.STG_MEMBER
GROUP BY Member_ID
HAVING COUNT(*) > 1;


-- Test 6: Members older than 90 days since flight
SELECT *
FROM STG.STG_MEMBER
WHERE Stale_Member = 'Y';


-- Test 7: Invalid records
SELECT *
FROM ERR.MEMBER_ERROR;
GO
