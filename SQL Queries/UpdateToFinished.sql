/* Update Project Status to Finished */
USE FinalProject
GO

UPDATE Orders 
SET Order_Status = 1
WHERE Phone = '201-881-9460'

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