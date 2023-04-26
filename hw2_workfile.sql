CREATE DATABASE hw2_che;

USE hw2_che;

CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE NOT NULL,
	count_product INT NOT NULL
);

INSERT sales ( order_date, count_product)
VALUES
  ('2022-01-01', 156), 
  ('2022-01-02', 180), 
  ("2022-01-03", 21), 
  ("2022-01-04", 124),
  ('2022-01-05',341);

SELECT id, count_product,
CASE
	WHEN count_product < 100
		THEN 'Маленький заказ'
	WHEN count_product BETWEEN  100  AND   300
		THEN 'Средний заказ'
	ELSE 'Большой заказ'
END AS id_value
FROM sales;

CREATE TABLE orders
    (
	id INT PRIMARY KEY AUTO_INCREMENT,
	employee_id  VARCHAR (25)  NOT NULL,
	amount FLOAT NOT NULL,
    order_status VARCHAR (25)
    );

INSERT orders (employee_id , amount , order_status)
VALUES
	('e03', 15.00, 'OPEN'), 
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');
    
SELECT id, order_status,
    CASE
    WHEN order_status = "OPEN"
    THEN "Order is in open state."
    WHEN order_status = "CLOSED"
    THEN "Order is closed."
    ELSE "Order is cancelled."
    END AS order_summary
    FROM orders; 