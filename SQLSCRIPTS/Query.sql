-- Query 1: Join - Show all posts with the full name of the user who posted them
SELECT 
    u.FirstName + ' ' + u.LastName AS PostedBy,
    p.Content,
    p.PostDate
FROM 
    dbo.Post p
JOIN 
    dbo.[User] u ON p.UserID = u.UserID;

-- Query 2: Aggregation - Count how many posts each user has made
SELECT 
    u.FirstName + ' ' + u.LastName AS UserName,
    COUNT(p.PostID) AS TotalPosts
FROM 
    dbo.[User] u
LEFT JOIN 
    dbo.Post p ON u.UserID = p.UserID
GROUP BY 
    u.FirstName, u.LastName;

-- Query 3: Join + Aggregation - Number of comments per post
SELECT 
    p.PostID,
    p.Content,
    COUNT(c.CommentID) AS CommentCount
FROM 
    dbo.Post p
LEFT JOIN 
    dbo.Comment c ON p.PostID = c.PostID
GROUP BY 
    p.PostID, p.Content;

-- Query 4: Derived Field - Message length sent between users
SELECT 
    m.MessageID,
    u1.FirstName + ' ' + u1.LastName AS Sender,
    u2.FirstName + ' ' + u2.LastName AS Receiver,
    LEN(m.Content) AS MessageLength,
    m.SentDate
FROM 
    dbo.Message m
JOIN 
    dbo.[User] u1 ON m.SenderID = u1.UserID
JOIN 
    dbo.[User] u2 ON m.ReceiverID = u2.UserID;

-- Query 5: Join - List users and the groups they belong to
SELECT 
    u.FirstName + ' ' + u.LastName AS UserName,
    g.Name AS GroupName,
    gm.JoinDate
FROM 
    dbo.GroupMembership gm
JOIN 
    dbo.[User] u ON gm.UserID = u.UserID
JOIN 
    dbo.[Group] g ON gm.GroupID = g.GroupID;
    