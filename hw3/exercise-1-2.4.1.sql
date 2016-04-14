use sagalasan;

DROP TABLE IF EXISTS hw3_product;
DROP TABLE IF EXISTS hw3_pc;
DROP TABLE IF EXISTS hw3_laptop;
DROP TABLE IF EXISTS hw3_printer;

CREATE TABLE hw3_product
(
  maker VARCHAR(1),
  model INTEGER,
  type VARCHAR(20),
  PRIMARY KEY(maker, model, type)
);

CREATE TABLE hw3_pc
(
  model INTEGER,
  speed REAL,
  ram INTEGER,
  hd INTEGER,
  price INTEGER,
  PRIMARY KEY(model)
);

CREATE TABLE hw3_laptop
(
  model INTEGER,
  speed REAL,
  ram INTEGER,
  hd INTEGER,
  screen REAL,
  price INTEGER,
  PRIMARY KEY(model)
);

CREATE TABLE hw3_printer
(
  model INTEGER,
  color VARCHAR(20),
  type VARCHAR(20),
  price INTEGER,
  PRIMARY KEY(model)
);

LOAD DATA LOCAL INFILE 'product.csv'
INTO TABLE hw3_product
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'pc.csv'
INTO TABLE hw3_product
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'laptop.csv'
INTO TABLE hw3_product
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'printer.csv'
INTO TABLE hw3_product
FIELDS TERMINATED BY '|' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;