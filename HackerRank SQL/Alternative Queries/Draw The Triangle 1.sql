-- github.com/DaniAngelov


DECLARE @number INT = 20
WHILE (@number > 0) 
BEGIN
   PRINT REPLICATE('* ', @number) 
   SET @number = @number - 1
END
