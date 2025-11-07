-- =====================================================
--  QA TESTING PRACTICE DATABASE
--  Author: Giuseppe Tropea
--  Purpose: SQL Training for QA Automation
-- =====================================================

-- Drop existing tables if rerunning the script
DROP TABLE IF EXISTS test_results;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

-- ====================
-- USERS TABLE
-- ====================
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50),
    signup_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO users (name, email, city, signup_date) VALUES
('Giuseppe Tropea', 'giuseppe@qa.com', 'London', '2024-03-10'),
('Luca Rossi', 'luca.rossi@gmail.com', 'Milan', '2024-04-15'),
('Maria Smith', 'maria.smith@yahoo.com', 'London', '2024-05-20'),
('John Doe', 'john.doe@company.com', 'Paris', '2024-06-11'),
('Emma Brown', 'emma.brown@hotmail.com', 'Madrid', '2024-07-09');

-- ====================
-- PRODUCTS TABLE
-- ====================
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price NUMERIC(10,2) CHECK (price > 0)
);

INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 899.99),
('Keyboard', 'Electronics', 59.99),
('Desk Chair', 'Furniture', 129.00),
('Coffee Mug', 'Accessories', 15.50),
('Monitor', 'Electronics', 210.75);

-- ====================
-- ORDERS TABLE
-- ====================
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    product_id INT REFERENCES products(id),
    quantity INT CHECK (quantity > 0),
    order_date DATE DEFAULT CURRENT_DATE
);

INSERT INTO orders (user_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2024-05-01'),
(1, 2, 2, '2024-05-05'),
(2, 5, 1, '2024-05-09'),
(3, 3, 1, '2024-05-15'),
(4, 4, 3, '2024-05-22'),
(5, 1, 1, '2024-06-01');

-- ====================
-- TEST RESULTS TABLE
-- ====================
CREATE TABLE test_results (
    id SERIAL PRIMARY KEY,
    test_name VARCHAR(100) NOT NULL,
    status VARCHAR(10) CHECK (status IN ('passed','failed','skipped')),
    duration NUMERIC(5,2),
    executed_by INT REFERENCES users(id),
    executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO test_results (test_name, status, duration, executed_by) VALUES
('Login functionality', 'passed', 2.5, 1),
('Signup validation', 'failed', 3.2, 1),
('Payment process', 'passed', 4.1, 2),
('UI layout check', 'skipped', 0.0, 3),
('Order flow', 'passed', 5.0, 4),
('Logout validation', 'failed', 2.7, 5);

-- ====================
-- VERIFY DATA
-- ====================
SELECT 'Users:' AS section; SELECT * FROM users;
SELECT 'Products:' AS section; SELECT * FROM products;
SELECT 'Orders:' AS section; SELECT * FROM orders;
SELECT 'Test Results:' AS section; SELECT * FROM test_results;

-- =====================================================
-- END OF SCHEMA
-- =====================================================