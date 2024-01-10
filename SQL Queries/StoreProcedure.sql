/* Created a Stored Procedure to look up what projects need to be done */
USE FinalProject
GO

DROP PROCEDURE IF EXISTS NotFinished
GO

CREATE PROCEDURE NotFinished
AS
BEGIN
SELECT CU.First_Name, CU.Last_Name, 
OD.Fandom, OD.Type_of_Artwork
FROM Orders AS OD
JOIN Customer AS CU
ON OD.Phone = CU.Phone
WHERE OD.Order_Status = 0
END
GO

EXECUTE dbo.NotFinished
GO