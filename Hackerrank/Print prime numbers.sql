DECLARE @i FLOAT
DECLARE @Number FLOAT = 5
DECLARE @IsPrime BIT 
DECLARE @Result VARCHAR(MAX)

DECLARE @PrimeNumbers TABLE (Number INT)

INSERT INTO @PrimeNumbers VALUES (2),(3)

WHILE(@Number <= 1000)
BEGIN
	SET @i = 2
	SET @IsPrime = 1
	WHILE(@i*@i <= @Number)
	BEGIN
		IF(FLOOR(@Number/@i)=(@Number/@i))
			BEGIN
				SET @IsPrime=0
			END
		SET @i = @i+1
	END

IF(@IsPrime=1) INSERT INTO @PrimeNumbers VALUES (@Number)
SET @Number = @Number + 2
END


SELECT @Result=COALESCE(@Result + '&', '') + CONVERT(varchar(10), Number)
FROM @PrimeNumbers

PRINT @Result










