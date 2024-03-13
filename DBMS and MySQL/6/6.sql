CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES menu(id)
);

INSERT INTO menu (name, parent_id) VALUES 
('Home', NULL),
('About Us', NULL),
('Products', NULL),
('Contact Us', NULL),
('Our Team', 2),
('Mission', 2),
('Vision', 2),
('Product A', 3),
('Product B', 3),
('Product C', 3);

SELECT m1.name AS menu_name, 
       COALESCE(m2.name, 'Top-Level') AS parent_menu_name
FROM menu m1
LEFT JOIN menu m2 ON m1.parent_id = m2.id;
