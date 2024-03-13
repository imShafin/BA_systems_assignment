CREATE TABLE worker (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO worker (first_name, last_name, salary) VALUES 
('Alice', 'Smith', 60000.00),
('Bob', 'Jones', 55000.00),
('Emily', 'Davis', 52000.00),
('Michael', 'Johnson', 58000.00),
('Sarah', 'Williams', 63000.00),
('David', 'Brown', 54000.00),
('Jennifer', 'Miller', 59000.00),
('Daniel', 'Wilson', 57000.00),
('Jessica', 'Taylor', 61000.00),
('Matthew', 'Anderson', 56000.00);


SELECT *
FROM worker
WHERE salary > (SELECT AVG(salary) FROM worker);
