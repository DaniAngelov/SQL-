-- github.com/DaniAngelov

SELECT
    CEILING(AVG(Salary) - AVG(REPLACE(SALARY, '0', '')))
FROM EMPLOYEES;
