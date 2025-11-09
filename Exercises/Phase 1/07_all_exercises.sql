-- 🧩 Task 1 – Targeted User Search (WHERE + ORDER BY)

-- Goal: Find users that match multiple conditions.

-- Find all users who
-- • live in London
-- • AND signed up after 2024-04-01
-- Show: name, email, city, signup_date
-- Order by signup_date DESC (newest first)

SELECT name, email, city, signup_date 
FROM users 
WHERE city = 'London' 
AND signup_date > '2024-04-01' 
ORDER BY signup_date DESC;


-- ⸻

-- 🧩 Task 2 – Product Sanity Check (BETWEEN + NOT IN)

-- Goal: Validate product pricing ranges.
-- Show all products that
-- • cost between 50 and 200 (inclusive)
-- • AND are not in the category ‘Accessories’
-- Show: name, category, price
-- Order by price ASC
SELECT name, category, price FROM products WHERE price BETWEEN 50 AND 200 AND category !='Accessories' ORDER BY price ASC;

-- ⸻

-- 🧩 Task 3 – Email Domain Inspection (LIKE + OR)
-- Goal: Check email domains.
-- Find all users whose email ends with @gmail.com or @hotmail.com
-- Show: name, email
-- Order by email ASC

SELECT name, email FROM users WHERE email LIKE '%@gmail.com' OR email LIKE '%@hotmail.com' ORDER BY email ASC;


-- ⸻

-- 🧩 Task 4 – Recent Orders Sampling (ORDER BY + LIMIT)
-- Goal: Pull a small sample of recent order data.
-- Get the 5 most recent orders.
-- Show: id, user_id, product_id, quantity, order_date
-- Order by order_date DESC (newest first)

SELECT * FROM orders ORDER BY order_date DESC LIMIT 5;


-- ⸻

-- 🧩 Task 5 – Suspicious Users (Data Quality Check)

-- Goal: Detect potential invalid emails.
-- Find all users whose email is suspicious because it
-- • does not contain ‘@’
-- OR
-- • does not contain ‘.’
-- Show: name, email, city
-- Hint: WHERE email NOT LIKE '%@%' OR email NOT LIKE '%.%'

SELECT name, email, city FROM users WHERE email NOT LIKE '%@%' or email NOT LIKE '%.%';

