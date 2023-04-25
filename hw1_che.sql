- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными. 

CREATE DATABASE hw1_che;
CREATE TABLE  phone 
(	
    id_phone INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    manuffcturer VARCHAR(20) NOT NULL, 
	model VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    amount INT NULL DEFAULT 0,
    store VARCHAR(20) NOT NULL,
    UNIQUE INDEX id_phone_UNIQUE (id_phone ASC) VISIBLE
);

INSERT INTO phone (manuffcturer, model, price, amount, store) 
VALUES ('OnePlus', '9RT', 400, 10, 'Eldorado');

INSERT INTO phone (manuffcturer, model, price, amount, store) 
VALUES ('Nokia', '3110', 100, 999, 'MTS');

INSERT INTO phone (manuffcturer, model, price, amount, store) 
VALUES ('Samsung', 'Note 9', 500, 2, 'MTS');

INSERT INTO phone (manuffcturer, model, price, amount, store) 
VALUES ('Philips', 'L20', 500, 1, 'Beeline');

INSERT INTO phone (manuffcturer, model, price, amount, store) 
VALUES ('Htc', '123', 400, 0, 'DOMO');

SELECT * FROM hw1_che.phone;

SELECT manuffcturer, model, price
FROM phone
WHERE amount > 2;

SELECT *
FROM phone
WHERE manuffcturer = 'Samsung';