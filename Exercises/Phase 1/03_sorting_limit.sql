-- 🎯 Goal
-- Control the order and number of rows returned.

-- 1.	Show all products ordered by price ascending.

SELECT * FROM products ORDER BY price ASC;

-- 2.	Show the 3 cheapest products.

SELECT * FROM products ORDER BY price ASC LIMIT 3;

-- 3.	Show all users ordered by signup_date (newest first).

SELECT * FROM users ORDER BY signup_date DESC;