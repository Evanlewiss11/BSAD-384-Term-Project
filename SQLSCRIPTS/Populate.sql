DROP TABLE IF EXISTS dbo.GroupMembership;
DROP TABLE IF EXISTS dbo.[Group];
DROP TABLE IF EXISTS dbo.Message;
DROP TABLE IF EXISTS dbo.Comment;
DROP TABLE IF EXISTS dbo.[Like];
DROP TABLE IF EXISTS dbo.Post;
DROP TABLE IF EXISTS dbo.Friendship;
DROP TABLE IF EXISTS dbo.[User];

-- Create User table
CREATE TABLE dbo.[User] (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Password VARCHAR(100),
    JoinDate DATE
);

-- Create Friendship table
CREATE TABLE dbo.Friendship (
    UserID1 INT,
    UserID2 INT,
    FriendshipDate DATE,
    PRIMARY KEY (UserID1, UserID2),
    FOREIGN KEY (UserID1) REFERENCES dbo.[User](UserID),
    FOREIGN KEY (UserID2) REFERENCES dbo.[User](UserID)
);

-- Create Post table
CREATE TABLE dbo.Post (
    PostID INT PRIMARY KEY,
    UserID INT,
    Content VARCHAR(MAX),
    PostDate DATETIME,
    FOREIGN KEY (UserID) REFERENCES dbo.[User](UserID)
);

-- Create Like table
CREATE TABLE dbo.[Like] (
    LikeID INT PRIMARY KEY,
    UserID INT,
    PostID INT,
    LikeDate DATETIME,
    FOREIGN KEY (UserID) REFERENCES dbo.[User](UserID),
    FOREIGN KEY (PostID) REFERENCES dbo.Post(PostID)
);

-- Create Comment table
CREATE TABLE dbo.Comment (
    CommentID INT PRIMARY KEY,
    UserID INT,
    PostID INT,
    Content VARCHAR(MAX),
    CommentDate DATETIME,
    FOREIGN KEY (UserID) REFERENCES dbo.[User](UserID),
    FOREIGN KEY (PostID) REFERENCES dbo.Post(PostID)
);

-- Create Message table
CREATE TABLE dbo.Message (
    MessageID INT PRIMARY KEY,
    SenderID INT,
    ReceiverID INT,
    Content VARCHAR(MAX),
    SentDate DATETIME,
    FOREIGN KEY (SenderID) REFERENCES dbo.[User](UserID),
    FOREIGN KEY (ReceiverID) REFERENCES dbo.[User](UserID)
);

-- Create Group table
CREATE TABLE dbo.[Group] (
    GroupID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description VARCHAR(MAX),
    CreatedDate DATE
);

-- Create GroupMembership table
CREATE TABLE dbo.GroupMembership (
    GroupID INT,
    UserID INT,
    JoinDate DATE,
    PRIMARY KEY (GroupID, UserID),
    FOREIGN KEY (GroupID) REFERENCES dbo.[Group](GroupID),
    FOREIGN KEY (UserID) REFERENCES dbo.[User](UserID)
);

-- Sample Inserts
INSERT INTO dbo.[User] VALUES (1, 'Evan', 'Lewis', 'evan@email.com', 'pass123', '2023-01-01');
INSERT INTO dbo.[User] VALUES (2, 'Kya', 'Smith', 'kya@email.com', 'pass456', '2023-02-15');
INSERT INTO dbo.[User] VALUES (3, 'David', 'Mattie', 'david@email.com', 'pass789', '2023-03-01');

INSERT INTO dbo.Friendship VALUES (1, 2, '2023-02-20');
INSERT INTO dbo.Friendship VALUES (2, 3, '2023-03-05');

INSERT INTO dbo.Post VALUES (1, 1, 'First post from Evan!', '2023-04-01 12:00');
INSERT INTO dbo.Post VALUES (2, 2, 'Kya here testing the platform.', '2023-04-02 14:30');

INSERT INTO dbo.[Like] VALUES (1, 2, 1, '2023-04-01 13:00');
INSERT INTO dbo.[Like] VALUES (2, 3, 2, '2023-04-02 15:00');

INSERT INTO dbo.Comment VALUES (1, 3, 1, 'Nice post Evan!', '2023-04-01 13:15');
INSERT INTO dbo.Comment VALUES (2, 1, 2, 'Welcome Kya!', '2023-04-02 15:10');

INSERT INTO dbo.Message VALUES (1, 1, 2, 'Hey Kya!', '2023-04-01 12:30');
INSERT INTO dbo.Message VALUES (2, 2, 1, 'Hey Evan! Good to see you here.', '2023-04-01 12:45');

INSERT INTO dbo.[Group] VALUES (1, 'Gaming Club', 'Group for game lovers', '2023-04-01');
INSERT INTO dbo.[Group] VALUES (2, 'Study Group', 'For class collabs', '2023-04-03');

INSERT INTO dbo.GroupMembership VALUES (1, 1, '2023-04-01');
INSERT INTO dbo.GroupMembership VALUES (2, 2, '2023-04-03');
INSERT INTO dbo.GroupMembership VALUES (2, 3, '2023-04-03');



