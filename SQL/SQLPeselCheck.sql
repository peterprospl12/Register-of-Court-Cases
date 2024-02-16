create FUNCTION IsValidPesel(@Pesel VARCHAR(max))
RETURNS BIT
AS
BEGIN

	IF len(@Pesel) != 11 OR isnumeric(@Pesel) = 0 OR PATINDEX('%[^0-9]%', @Pesel) > 0
	RETURN 0

	IF isnumeric(@PESEL) = 0
	RETURN 0

    DECLARE @Checksum INT = CONVERT(int, SUBSTRING(@Pesel, 1, 1)) * 1 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 2, 1)) * 3 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 3, 1)) * 7 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 4, 1)) * 9 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 5, 1)) * 1 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 6, 1)) * 3 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 7, 1)) * 7 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 8, 1)) * 9 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 9, 1)) * 1 % 10 +
							CONVERT(int, SUBSTRING(@Pesel, 10, 1)) * 3 % 10;

      RETURN CASE WHEN (10 - @Checksum % 10) % 10 = CONVERT(int, SUBSTRING(@Pesel, 11, 1)) THEN 1 ELSE 0 END;
END;

