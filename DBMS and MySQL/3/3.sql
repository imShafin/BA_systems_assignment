--From Assignment 2's table--

SELECT *
FROM worker
WHERE first_name REGEXP '^[aeiouAEIOU]' AND last_name REGEXP '[aeiouAEIOU]$';
