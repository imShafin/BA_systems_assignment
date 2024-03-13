SELECT * FROM employees WHERE last_name LIKE 'Sm%';

SELECT * FROM customers WHERE phone_number LIKE '555-1_1%';

SELECT * FROM products WHERE product_code LIKE '[A-C]%';

SELECT * FROM products WHERE product_code LIKE '[^A-C]%';

SELECT * FROM products WHERE product_code LIKE '{X,Y,Z}%';

SELECT * FROM employees WHERE last_name LIKE '[M-T]%';

SELECT * FROM products WHERE product_name LIKE '%ball%';
