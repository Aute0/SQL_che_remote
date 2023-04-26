/*## Урок 2. SQL – создание объектов, простые запросы выборки

1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.
3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE
4. Чем NULL отличается от 0?

1. id order_date count_product  
    1 2022-01-01 156
    2 2022-01-02 180
    3 2022-01-03 21
    4 2022-01-04 124
    5 2022-01-05 341
*/

CREATE TABLE sales                          /*#создайте табличку “sales”*/
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	order_date DATE NOT NULL,
	count_product INT NOT NULL
);

INSERT sales ( order_date, count_product)   /*#Заполните ее данными*/

VALUES
  ('2022-01-01', 156), 
  ('2022-01-02', 180), 
  ("2022-01-03", 21), 
  ("2022-01-04", 124),
  ('2022-01-05',341);

/*Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва :
меньше 100 -Маленький заказ от 100 до 300 -Средний заказ больше 300 -Большой заказ
idзаказа
Тип заказа 1 Средний заказ 2 Средний заказ 3 Маленький заказ 4 Средний заказ 5 Большой заказ
*/

SELECT id, count_product,                   /*Сгруппируйте значений количества*/
CASE
	WHEN count_product < 100
		THEN 'Маленький заказ'
	WHEN count_product BETWEEN  100  AND   300
		THEN 'Средний заказ'
	ELSE 'Большой заказ'
END AS id_value
FROM sales;

/*
Создайте таблицу “orders”, заполните ее значениями
id employee_id amount order_status
1 e03 15.00 OPEN
2 e01 25.50 OPEN
3 e05 100.70 CLOSED
4 e02 22.18 OPEN
5 e04 9.50 CANCELLED
*/

INSERT orders (employee_id , amount , order_status)
VALUES
	('e03', 15.00, 'OPEN'), 
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');
    
-- Выберите все заказы. В зависимости от поля order_status 
-- выведите столбец full_order_status: OPEN –«Order is in open state»; CLOSED -«Order is closed»; CANCELLED -«Order is cancelled»

SELECT id, order_status,
    CASE
    WHEN order_status = "OPEN"
    THEN "Order is in open state."
    WHEN order_status = "CLOSED"
    THEN "Order is closed."
    ELSE "Order is cancelled."
    END AS order_summary
    FROM orders;

 /*4. Чем 0 отличается от NULL?
 "0" — это константа
 NULL — «пустое поле» null, «поле, не содержащее никакого значения».
 */