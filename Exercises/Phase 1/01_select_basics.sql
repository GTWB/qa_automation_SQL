-- 🎯 Goal
-- Understand the structure of a table and how to read data using SELECT.

-- 1. Show only name and city from users.

SELECT name, city FROM users;

-- 2. Show all products data.

SELECT * FROM products;

-- 3. Show only name and price from products with column aliases (Product, Price £).

SELECT name AS "Product", price as "Price £" FROM products;