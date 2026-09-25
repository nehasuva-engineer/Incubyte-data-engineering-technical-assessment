USE Airline;
GO

CREATE TABLE DWH.MEMBER_INDIA
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

CREATE TABLE DWH.MEMBER_USA
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

CREATE TABLE DWH.MEMBER_CANADA
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

CREATE TABLE DWH.MEMBER_PHILIPPINES
(
    Member_Name        VARCHAR(255),
    Member_ID          VARCHAR(18),
    Enrollment_Date    DATE,
    Last_Flight_Date   DATE,
    Tier_Code          VARCHAR(5),
    Agent_Name          VARCHAR(255),
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

CREATE TABLE DWH.MEMBER_AUSTRALIA
(
    Member_Name        VARCHAR(255),
    Member_ID          VARCHAR(18),
    Enrollment_Date    DATE,
    Last_Flight_Date   DATE,
    Tier_Code          VARCHAR(5),
    Agent_Name          VARCHAR(255),
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
