/* Create Stored Procedure to change the Project Status to Finished */
USE FinalProject
GO

DROP PROCEDURE IF EXISTS UpdateOrderStatus
GO

CREATE PROCEDURE UpdateOrderStatus 
@Phone_Number NVARCHAR(50)
AS
UPDATE Orders 
SET Order_Status = 1
WHERE Phone = @Phone_Number

EXECUTE dbo.UpdateOrderStatus '201-881-9460'
GO

SELECT * FROM Orders
WHERE Phone = '201-881-9460'

/* Created Function to look up the Finished Project's Shipping Address */
-- DROP FUNCTION IF EXISTS LookUpAddress
-- GO

-- CREATE FUNCTION LookUpAddress (@entry_id NVARCHAR(50))
-- RETURNS TABLE
-- AS
-- RETURN
-- (
--     SELECT * FROM Customer
--     WHERE Phone = @entry_id
-- );
-- GO

-- SELECT * FROM LookUpAddress('201-881-9460')
-- GO