/* ● Create a function that looks up an entry in the table. */

DROP FUNCTION IF EXISTS LookUpOneEntry
GO

CREATE FUNCTION LookUpOneEntry (@entry_id INT)
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM MOCK_DATA
    WHERE id = @entry_id
);
GO

SELECT * FROM LookUpOneEntry(500)
GO