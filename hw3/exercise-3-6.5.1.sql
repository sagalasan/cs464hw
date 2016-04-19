# a
START TRANSACTION;
INSERT INTO hw3_product
    VALUES ('C', 1100, 'pc');

INSERT INTO hw3_pc
    VALUES (1100, 3.2, 1024, 180, 2499);

SELECT * FROM hw3_product;
SELECT * FROM hw3_pc;

ROLLBACK;

# b
START TRANSACTION;

INSERT INTO hw3_product
(SELECT product.maker, product.model + 1100, 'laptop'
FROM hw3_product product, hw3_pc pc
WHERE product.model = pc.model);

INSERT INTO hw3_laptop
(SELECT model + 1100, speed, ram, hd, 17, price + 500 FROM hw3_pc);

SELECT * FROM hw3_product;
SELECT * FROM hw3_laptop;

ROLLBACK;

# c
START TRANSACTION;

DELETE FROM hw3_product
WHERE type = 'pc' AND model IN (SELECT model FROM hw3_pc WHERE hd < 100);

DELETE FROM hw3_pc
WHERE hd < 100;

SELECT * FROM hw3_product;
SELECT * FROM hw3_pc;

ROLLBACK;

#d
START TRANSACTION;
UPDATE hw3_product SET maker = 'A'
WHERE maker = 'B';
SELECT * FROM hw3_product;
ROLLBACK;

#e
START TRANSACTION;
UPDATE hw3_pc SET ram = ram * 2, hd = hd + 60;
SELECT * FROM hw3_pc;
ROLLBACK;

#f
START TRANSACTION;
UPDATE hw3_laptop
SET screen = screen + 1, price = price - 100
WHERE model IN (SELECT model
                FROM hw3_product
                WHERE maker = 'B');
SELECT * FROM hw3_laptop;
ROLLBACK;