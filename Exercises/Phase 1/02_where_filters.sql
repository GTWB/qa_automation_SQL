-- 🎯 Goal:
-- Retrieve only the rows that match specific conditions.

-- 1.	Show users who live in London.

SELECT name AS "User" FROM users WHERE city = 'London';

-- 2.	Show products with a price greater than 200.

SELECT * FROM products WHERE price > 200;

-- 3.	Show users who live either in Paris or Madrid.

SELECT name AS "user" FROM users WHERE city In ('Paris', 'Madrid');

-- 4.	Show all users who are not from Milan.

SELECT * FROM users WHERE city != 'Milan'