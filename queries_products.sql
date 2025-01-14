-- Comments in SQL Start with dash-dash --

--1--
INSERT INTO products (name, price, can_be_returned) 
    values ('chair', 44.00, false);

--2--
INSERT INTO products (name, price, can_be_returned) 
    values ('stool', 25.99, true);

--3--
INSERT INTO products (name, price, can_be_returned) 
    values ('table', 124.00, false);

--4--
SELECT * FROM products;

--5--
SELECT name FROM products;

--6--
SELECT name, price FROM products;

--7--
INSERT INTO products (name, price, can_be_returned)
    values ('mirror', 21.99, true);

--8--
SELECT * FROM products WHERE can_be_returned = true;

--9--
SELECT * FROM products WHERE price < 44;

--10--
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

--11--
UPDATE products SET price = price-20;

--12--
DELETE FROM products WHERE price < 25;

--13--
UPDATE products SET price = price+20;

--14--
UPDATE products SET can_be_returned = true;