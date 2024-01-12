/* Created a view of the Already Finished Projects that were probably shipped already */
USE FinalProject
GO

DROP VIEW IF EXISTS AlreadyFinishedProjects
GO

CREATE VIEW AlreadyFinishedProjects AS
SELECT Phone, Fandom, Type_of_Artwork, Price
FROM Orders
WHERE Order_Status = 1
GO

--SELECT * FROM AlreadyFinishedProjects

SELECT SUM(Price) FROM AlreadyFinishedProjects