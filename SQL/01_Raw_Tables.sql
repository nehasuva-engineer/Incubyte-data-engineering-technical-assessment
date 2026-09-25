USE Airline;
GO

CREATE TABLE RAW.RAW_MEMBER
(
    Member_Name        VARCHAR(255),
    Member_ID          VARCHAR(18),
    Enrollment_Date    VARCHAR(8),
    Last_Flight_Date   VARCHAR(8),
    Tier_Code          VARCHAR(5),
    Agent_Name         VARCHAR(255),
    State              VARCHAR(5),
    Country            VARCHAR(5),
    Post_Code          VARCHAR(5),
    DOB                VARCHAR(8),
    Active_Member      CHAR(1),
    Load_Date          DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE RAW.RAW_REDEMPTION
(
    Raw_ID       INT IDENTITY(1,1),
    Member_ID    VARCHAR(18),
    Feed_Date    VARCHAR(8),
    Json_Data    NVARCHAR(MAX),
    Load_Date    DATETIME DEFAULT GETDATE()
);
GO
