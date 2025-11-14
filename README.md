# 🧩 SQL Fundamentals – Phase 1: Foundations

This section covers the **fundamental SQL operations** used daily by QA Engineers to validate, query, and inspect backend data.  
All queries were executed on the `qa_testing` database using PostgreSQL.

---

## 🎯 Learning Goals

- Retrieve and filter data using `SELECT` and `WHERE`
- Sort and limit results with `ORDER BY` and `LIMIT`
- Apply text and range filters with `LIKE`, `BETWEEN`, and `IN`
- Combine multiple conditions using `AND`, `OR`, and `NOT`
- Practice real QA-style data checks (email validation, recent orders, product sanity, etc.)

---

## 🧱 Topics Covered

| Concept                 | Description                               | Example                              |
| ----------------------- | ----------------------------------------- | ------------------------------------ |
| **SELECT**              | Retrieve data from one or more columns.   | `SELECT name, city FROM users;`      |
| **WHERE**               | Filter rows matching specific conditions. | `WHERE city = 'London';`             |
| **ORDER BY**            | Sort results ascending or descending.     | `ORDER BY signup_date DESC;`         |
| **LIMIT**               | Restrict the number of rows returned.     | `LIMIT 5;`                           |
| **LIKE / BETWEEN / IN** | Pattern, range, and list filters.         | `WHERE price BETWEEN 50 AND 200;`    |
| **AND / OR / NOT**      | Combine or negate conditions.             | `WHERE city='London' AND price>100;` |

## 🧱 Tech Stack

- **Database:** PostgreSQL (`qa_testing` schema)
- **Client:** pgAdmin 4 / psql
- **Editor:** VS Code

To create the schema locally:

```sql
-- Run this file in your PostgreSQL instance:
qa_testing_schema.sql
```
