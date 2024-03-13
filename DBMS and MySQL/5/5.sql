CREATE TABLE salary_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salary DECIMAL(10, 2),
    worker_id INT,
    paid_status ENUM('paid', 'unpaid'),
    payment_date DATE,
    FOREIGN KEY (worker_id) REFERENCES worker(id)
);

INSERT INTO salary_history (salary, worker_id, paid_status, payment_date) VALUES 
(60000.00, 1, 'paid', '2024-03-01'),
(55000.00, 2, 'paid', '2024-03-02'),
(52000.00, 3, 'unpaid', '2024-03-03'),
(58000.00, 4, 'paid', '2024-03-04'),
(63000.00, 5, 'unpaid', '2024-03-05'),
(54000.00, 6, 'paid', '2024-03-06'),
(59000.00, 7, 'paid', '2024-03-07'),
(57000.00, 8, 'unpaid', '2024-03-08'),
(61000.00, 9, 'paid', '2024-03-09'),
(56000.00, 10, 'unpaid', '2024-03-10');

SELECT w.first_name, w.last_name, COALESCE(SUM(sh.salary), 0) AS total_paid_amount
FROM worker w
LEFT JOIN salary_history sh ON w.id = sh.worker_id
WHERE sh.paid_status = 'paid' AND sh.payment_date <= CURDATE()
GROUP BY w.id;
