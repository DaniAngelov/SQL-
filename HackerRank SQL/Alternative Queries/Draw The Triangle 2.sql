-- github.com/DaniAngelov


DECLARE @number INT = 0
WHILE (@number <= 20) 
BEGIN
   PRINT REPLICATE('* ', @number) 
   SET @number = @number + 1
END
