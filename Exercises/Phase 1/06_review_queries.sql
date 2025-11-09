-- 🎯 Goal

-- Combine everything.



-- Write one query that answers each:
-- 1.	All users in London, sorted by newest signup date.
SELECT * FROM users WHERE city = 'London' ORDER BY signup_date DESC;
-- 2.	Top 3 most expensive products in category Electronics.

SELECT * FROM products WHERE category = 'Electronics' ORDER BY price DESC LIMIT 3;

-- 3.	Products priced between 100 and 200, sorted ascending.

SELECT * FROM products WHERE price BETWEEN 100 and 200 ORDER BY price ASC;

-- 4.	Users with emails from either Gmail or Yahoo.

SELECT * FROM users WHERE email LIKE '%gmail.com' OR email LIKE '%yahoo.com';

