USE Airline;
GO

CREATE TABLE STG.STG_MEMBER
(
    Member_Name        VARCHAR(255),
    Member_ID          VARCHAR(18),
    Enrollment_Date    DATE,
    Last_Flight_Date   DATE,
    Tier_Code          VARCHAR(5),
    Agent_Name         VARCHAR(255),
    State              VARCHAR(5),
    Country            VARCHAR(5),
    Post_Code          INT,
    DOB                DATE,
    Active_Member      CHAR(1),
    Age                INT,
    Stale_Member       CHAR(1),
    Load_Date          DATETIME
);
GO
