 -- github.com/DaniAngelov

DECLARE @a smallint = 2;
DECLARE @b smallint;
DECLARE @isPr bit;
DECLARE @res varchar(8000) = '';
DECLARE @n int = 1001;

WHILE @a < @n
BEGIN

    SET @isPr = 1;
    SET @b = 2;
    WHILE @b * @b <= @a
    BEGIN


        IF @a % @b = 0
        BEGIN
            SET @isPr = 0;
            BREAK;
        END

        SET @b += 1;

    END

    IF @isPr = 1
        SET @res += CAST(@a AS varchar(10)) + '&';

    SET @a += 1;

END;

SET @res = LEFT(@res, LEN(@res) - 1);
SELECT @res;
