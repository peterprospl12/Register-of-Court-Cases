create FUNCTION dbo.checkMaloletni(@ID_Pozwanego int)
RETURNS BIT
AS
BEGIN

	
    DECLARE @Data DATE;
    SET @Data = (SELECT Data_urodzenia FROM osoby WHERE ID_Osoby = @ID_Pozwanego);

      RETURN CASE WHEN DATEDIFF(YEAR, @Data, GETDATE()) < 18 THEN 1 ELSE 0 END;
END;

