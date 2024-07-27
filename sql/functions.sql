CREATE FUNCTION dbo.FIRST_NAME (@Email NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    RETURN LEFT(@Email, CHARINDEX('.', @Email) - 1)
END
GO

CREATE FUNCTION dbo.LAST_NAME (@Email NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    RETURN LEFT(SUBSTRING(@Email, CHARINDEX('.', @Email) + 1, LEN(@Email)), CHARINDEX('@', SUBSTRING(@Email, CHARINDEX('.', @Email) + 1, LEN(@Email))) - 1)
END
GO
