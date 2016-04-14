use sagalasan;

DROP TABLE IF EXISTS hw3_product;
DROP TABLE IF EXISTS hw3_pc;
DROP TABLE IF EXISTS hw3_laptop;
DROP TABLE IF EXISTS hw3_printer;

CREATE TABLE hw3_product
(
  maker VARCHAR(20),
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
  color BOOLEAN,
  type VARCHAR(20),
  price INTEGER,
  PRIMARY KEY(model)
);

INSERT INTO hw3_product(maker, model, type) VALUES ('A', '1001', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('A', '1002', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('A', '1003', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('A', '2004', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('A', '2005', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('A', '2006', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('B', '1004', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('B', '1005', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('B', '1006', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('B', '2007', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('C', '1007', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('D', '1008', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('D', '1009', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('D', '1010', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('D', '3004', 'printer');
INSERT INTO hw3_product(maker, model, type) VALUES ('D', '3005', 'printer');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '1011', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '1012', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '1013', 'pc');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '2001', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '2002', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '2003', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '3001', 'printer');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '3002', 'printer');
INSERT INTO hw3_product(maker, model, type) VALUES ('E', '3003', 'printer');
INSERT INTO hw3_product(maker, model, type) VALUES ('F', '2008', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('F', '2009', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('G', '2010', 'laptop');
INSERT INTO hw3_product(maker, model, type) VALUES ('H', '3006', 'printer');
INSERT INTO hw3_product(maker, model, type) VALUES ('H', '3007', 'printer');

INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2001', '2.00', '2048', '240', '20.1', '3673');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2002', '1.73', '1024', '80', '17.0', '949');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2003', '1.80', '512', '60', '15.4', '549');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2004', '2.00', '512', '60', '13.3', '1150');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2005', '2.16', '1024', '120', '17.0', '2500');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2006', '2.00', '2048', '80', '15.4', '1700');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2007', '1.83', '1024', '120', '13.3', '1429');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2008', '1.60', '1024', '100', '15.4', '900');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2009', '1.60', '512', '80', '14.1', '680');
INSERT INTO hw3_laptop(model, speed, ram, hd, screen, price) VALUES ('2010', '2.00', '2048', '160', '15.4', '2300');

INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1001', '2.66', '1024', '250', '2114');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1002', '2.10', '512', '250', '995');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1003', '1.42', '512', '80', '478');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1004', '2.80', '1024', '250', '649');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1005', '3.20', '512', '250', '630');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1006', '3.20', '1024', '320', '1049');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1007', '2.20', '1024', '200', '510');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1008', '2.20', '2048', '250', '770');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1009', '2.00', '1024', '250', '650');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1010', '2.80', '2048', '300', '770');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1011', '1.86', '2048', '160', '959');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1012', '2.80', '1024', '160', '649');
INSERT INTO hw3_pc(model, speed, ram, hd, price) VALUES ('1013', '3.06', '512', '80', '629');

INSERT INTO hw3_printer(model, color, type, price) VALUES ('3001', '1', 'ink-jet', '99');
INSERT INTO hw3_printer(model, color, type, price) VALUES ('3002', '0', 'laser', '239');
INSERT INTO hw3_printer(model, color, type, price) VALUES ('3003', '1', 'laser', '899');
INSERT INTO hw3_printer(model, color, type, price) VALUES ('3004', '1', 'ink-jet', '120');
INSERT INTO hw3_printer(model, color, type, price) VALUES ('3005', '0', 'laser', '120');
INSERT INTO hw3_printer(model, color, type, price) VALUES ('3006', '1', 'ink-jet', '100');
INSERT INTO hw3_printer(model, color, type, price) VALUES ('3007', '1', 'laser', '200');