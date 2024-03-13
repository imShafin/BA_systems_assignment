--from assignment 2's table --

SELECT *
FROM worker
WHERE salary BETWEEN (
        SELECT MIN(salary) FROM worker
    ) AND (
        SELECT MAX(salary) FROM worker
    );
