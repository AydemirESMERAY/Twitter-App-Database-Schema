CREATE DATABASE TwitterApp;
GO

USE TwitterApp;
GO

-- Create Users table
CREATE TABLE Users (
    UsersID INT PRIMARY KEY,
    Users NVARCHAR(100)
);

-- Create Tweet table
CREATE TABLE Tweet (
    TweetsID INT PRIMARY KEY,
    Tweets NVARCHAR(MAX)
);

-- Create Retweet table
CREATE TABLE Retweet (
    RetweetsID INT PRIMARY KEY,
    Retweets NVARCHAR(MAX)
);

-- Create Record table
CREATE TABLE Record (
    RecordsID INT PRIMARY KEY,
    Records NVARCHAR(MAX)
);

-- Create Media table
CREATE TABLE Media (
    MediaID INT PRIMARY KEY,
    Media NVARCHAR(MAX)
);

-- Create Answer table
CREATE TABLE Answer (
    AnswersID INT PRIMARY KEY,
    Answers NVARCHAR(MAX)
);

-- Create Likes table
CREATE TABLE Likes (
    LikesID INT PRIMARY KEY,
    Likes NVARCHAR(MAX)
);

-- Create Message table
CREATE TABLE Message (
    MessagesID INT PRIMARY KEY,
    Messages NVARCHAR(MAX)
);

-- Create Notification table
CREATE TABLE Notification (
    NotificationsID INT PRIMARY KEY,
    Notifications NVARCHAR(MAX)
);

-- Create Follower table
CREATE TABLE Follower (
    FollowerID INT PRIMARY KEY,
    Follower NVARCHAR(MAX)
);

-- Create Follow table
CREATE TABLE Follow (
    FollowID INT PRIMARY KEY,
    Follow NVARCHAR(MAX)
);

-- Create TwitterApp table
CREATE TABLE TwitterApp (
    AppID INT PRIMARY KEY,
    UsersID INT,
    TweetsID INT,
    RetweetsID INT,
    LikesID INT,
    MediaID INT,
    RecordsID INT,
    MessagesID INT,
    NotificationsID INT,
    AnswersID INT,
    FollowID INT,
    FollowerID INT,
    FOREIGN KEY (UsersID) REFERENCES Users(UsersID),
    FOREIGN KEY (TweetsID) REFERENCES Tweet(TweetsID),
    FOREIGN KEY (RetweetsID) REFERENCES Retweet(RetweetsID),
    FOREIGN KEY (LikesID) REFERENCES Likes(LikesID),
    FOREIGN KEY (MediaID) REFERENCES Media(MediaID),
    FOREIGN KEY (RecordsID) REFERENCES Record(RecordsID),
    FOREIGN KEY (MessagesID) REFERENCES Message(MessagesID),
    FOREIGN KEY (NotificationsID) REFERENCES Notification(NotificationsID),
    FOREIGN KEY (AnswersID) REFERENCES Answer(AnswersID),
    FOREIGN KEY (FollowID) REFERENCES Follow(FollowID),
    FOREIGN KEY (FollowerID) REFERENCES Follower(FollowerID)
);
