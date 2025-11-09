-- 🎯 Goal
-- Filter data using text and range patterns.

-- 1.	Find all users with an email ending in @hotmail.com.

SELECT * FROM users WHERE email LIKE '%@hotmail.com';

-- 2.	Show all products priced between 50 and 150.

SELECT * FROM products WHERE price BETWEEN 50 AND 150;

-- 3.	Show users whose city is either London or Madrid.

SELECT name, city FROM users WHERE city IN('London', 'Madrid');