-- 🎯 Goal

-- Write more complex conditions by combining logic.

-- 1.	Find all users who live in London AND have gmail emails.

SELECT * FROM users WHERE city = 'London' AND email LIKE '%gmail.com';

-- 2.	Show all Electronics products cheaper than 200.

SELECT * FROM products WHERE category = 'Electronics' AND price < 200;

-- 3.	Show users who live in Paris OR Madrid but not London.

SELECT * FROM users WHERE city = 'Madrid' OR city = 'Paris';