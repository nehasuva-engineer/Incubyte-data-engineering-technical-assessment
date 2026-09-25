USE Airline;
GO

INSERT INTO STG.STG_MEMBER
(
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
)
SELECT
    Member_Name,
    Member_ID,

    TRY_CONVERT(DATE, Enrollment_Date, 112),

    TRY_CONVERT(DATE, Last_Flight_Date, 112),

    Tier_Code,
    Agent_Name,
    State,
    Country,

    TRY_CONVERT(INT, Post_Code),

    TRY_CONVERT(DATE, DOB, 103),

    Active_Member,

    CASE
        WHEN TRY_CONVERT(DATE, DOB, 103) IS NOT NULL
        THEN
            DATEDIFF(YEAR, TRY_CONVERT(DATE, DOB, 103), GETDATE())
            -
            CASE
                WHEN DATEADD(
                    YEAR,
                    DATEDIFF(YEAR, TRY_CONVERT(DATE, DOB, 103), GETDATE()),
                    TRY_CONVERT(DATE, DOB, 103)
                ) > GETDATE()
                THEN 1
                ELSE 0
            END
        ELSE NULL
    END AS Age,

    CASE
        WHEN TRY_CONVERT(DATE, Last_Flight_Date, 112) IS NOT NULL
             AND DATEDIFF(
                    DAY,
                    TRY_CONVERT(DATE, Last_Flight_Date, 112),
                    GETDATE()
                 ) > 90
        THEN 'Y'
        ELSE 'N'
    END AS Stale_Member,

    Load_Date

FROM RAW.RAW_MEMBER;
GO
