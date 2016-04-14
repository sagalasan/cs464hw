use sagalasan;

# a
SELECT DISTINCT maker
FROM hw3_product
WHERE model IN
      (SELECT model
        FROM hw3_pc
        WHERE speed >= 3
      );

# b
SELECT model
FROM hw3_printer
WHERE price >= ALL
      (
        SELECT price
        FROM hw3_printer
      );

# c
SELECT model
FROM hw3_laptop
WHERE speed <= ALL
      (
        SELECT speed
        FROM hw3_pc
      );

# d
SELECT model
FROM (
  (SELECT model, price FROM hw3_laptop)
  UNION
  (SELECT model, price FROM hw3_pc)
  UNION
  (SELECT model, price FROM hw3_printer)
) AS models
WHERE price <= ALL (SELECT price FROM
  (
  (SELECT model, price FROM hw3_laptop)
  UNION
  (SELECT model, price FROM hw3_pc)
  UNION
  (SELECT model, price FROM hw3_printer)
  ) as models2);

#e
SELECT DISTINCT maker
FROM hw3_product, hw3_printer
WHERE hw3_printer.color = TRUE AND hw3_printer.model = hw3_product.model AND
  hw3_printer.price <= ALL (SELECT price FROM hw3_printer WHERE color=TRUE );

#f
SELECT *
FROM hw3_product
WHERE model IN (
  SELECT model
  FROM hw3_pc
  WHERE ram <= ALL (SELECT ram FROM hw3_pc) AND
    speed >= ALL (SELECT speed FROM hw3_pc)
);