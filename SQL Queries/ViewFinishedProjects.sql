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

/* Total Profit so far */
--SELECT SUM(Price) FROM AlreadyFinishedProjects

/* Since one Person is most likely to make a couple items per month, 
depending how fast they can draw and sew, 
calculating the sum of a fraction of the items for tax purposes.
It is logical the the top ones were the first ones made. */
--SELECT TOP 24 * FROM AlreadyFinishedProjects
--SELECT SUM(Price) FROM (SELECT TOP 24 Price FROM AlreadyFinishedProjects) AS Total

/* It was easier to delete the values that were already calculated and 
a view prevents the Master Database from being deleted. */
--DELETE TOP(24) FROM AlreadyFinishedProjects