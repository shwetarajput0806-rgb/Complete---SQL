# Complete---SQL

# 📊 SQL Learning & Practice

Welcome to my **SQL Learning & Practice Repository** 🚀

This repository contains my complete SQL learning journey, including **SQL fundamentals, database concepts, queries, joins, subqueries, aggregate functions, window functions, CTEs, and advanced SQL concepts**.

The main goal of this repository is to build strong SQL fundamentals and develop the ability to solve **real-world data analysis and interview problems**.

---

## 🛠️ Technologies Used

* SQL
* Postgres SQL
* Relational Databases
* Database Management Systems (DBMS)

---

## 📚 Topics Covered

### 1. SQL Fundamentals

* Introduction to SQL
* SQL Syntax
* Database & Tables
* `CREATE`
* `ALTER`
* `DROP`
* `TRUNCATE`
* `INSERT`
* `UPDATE`
* `DELETE`
* `SELECT`

### 2. Filtering & Sorting

* `WHERE`
* Comparison Operators
* Logical Operators
* `AND`
* `OR`
* `NOT`
* `BETWEEN`
* `IN`
* `LIKE`
* `IS NULL`
* `ORDER BY`
* `LIMIT`

### 3. SQL Functions

#### Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

#### String Functions

* `CONCAT()`
* `LENGTH()`
* `UPPER()`
* `LOWER()`
* `SUBSTRING()`
* `TRIM()`

#### Date & Time Functions

* Date extraction
* Date formatting
* Date difference
* Date calculations

#### Conditional Functions

* `CASE`
* `IF()`
* `COALESCE()`
* `NULLIF()`

---

## 🔗 4. SQL Joins

Practiced different types of joins:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN
* SELF JOIN
* CROSS JOIN

Understanding joins helped me combine and analyze data from multiple tables.

---

## 📊 5. Grouping & Aggregation

* `GROUP BY`
* `HAVING`
* Aggregate Functions
* Grouped Data Analysis
* Filtering Aggregated Results

---

## 🔍 6. Subqueries

* Single-row Subqueries
* Multi-row Subqueries
* Nested Subqueries
* Correlated Subqueries
* Subqueries with `SELECT`
* Subqueries with `WHERE`
* Subqueries with `FROM`

---

## 🔄 7. Set Operations

* `UNION`
* `UNION ALL`
* `INTERSECT`
* `EXCEPT`

---

## 🪟 8. Window Functions

Advanced SQL concepts practiced:

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `LEAD()`
* `LAG()`
* `FIRST_VALUE()`
* `LAST_VALUE()`
* `PARTITION BY`
* `ORDER BY` with Window Functions

---

## 🧩 9. Common Table Expressions (CTEs)

* Basic CTE
* Multiple CTEs
* Recursive CTE
* CTE with Aggregations
* CTE with Window Functions

Example:

```sql
WITH sales_summary AS (
    SELECT
        customer_id,
        SUM(amount) AS total_sales
    FROM sales
    GROUP BY customer_id
)
SELECT *
FROM sales_summary;
```

---

## 🗃️ 10. Database Concepts

* Primary Key
* Foreign Key
* Candidate Key
* Composite Key
* Constraints
* `NOT NULL`
* `UNIQUE`
* `DEFAULT`
* `CHECK`
* Referential Integrity

---

## 🔐 11. SQL Constraints

Practiced:

* PRIMARY KEY
* FOREIGN KEY
* UNIQUE
* NOT NULL
* CHECK
* DEFAULT

---

## 👀 12. Views

* Creating Views
* Updating Views
* Dropping Views
* Advantages of Views
* Views for Data Analysis

---

## ⚡ 13. Indexing

* Introduction to Indexes
* Clustered Index
* Non-Clustered Index
* Creating Indexes
* Advantages of Indexing
* Query Performance

---

## 🔄 14. Transactions

* Transactions
* `COMMIT`
* `ROLLBACK`
* `SAVEPOINT`
* ACID Properties

---

## 🧠 15. SQL Interview Practice

Practiced SQL problems based on:

* Finding duplicate records
* Finding second-highest salary
* Top N records
* Department-wise salary analysis
* Employee-manager relationships
* Customers with no orders
* Monthly sales analysis
* Running totals
* Ranking employees
* Identifying consecutive records
* Finding missing values
* Date-based analysis
* Complex joins
* Window function problems

---

## 📈 SQL for Data Analytics

SQL concepts were also practiced from a **Data Analytics perspective**, including:

* Data filtering
* Data cleaning
* Data aggregation
* Customer analysis
* Sales analysis
* Employee analysis
* Business KPI calculation
* Trend analysis
* Ranking
* Cohort-style analysis
* Finding business insights from relational data

---

## 📂 Repository Structure

```text
SQL/
│
├── 01_Basics/
├── 02_Filtering_Sorting/
├── 03_Functions/
├── 04_Group_By_Having/
├── 05_Joins/
├── 06_Subqueries/
├── 07_Set_Operations/
├── 08_CTE/
├── 09_Window_Functions/
├── 10_Constraints/
├── 11_Views/
├── 12_Indexing/
├── 13_Transactions/
├── 14_Interview_Questions/
└── 15_Practice_Problems/
```

---

## 🎯 Learning Goals

Through this repository, I focused on:

* Building strong SQL fundamentals
* Writing efficient SQL queries
* Working with relational databases
* Solving SQL interview problems
* Performing data analysis using SQL
* Understanding advanced SQL concepts
* Improving problem-solving skills

---

## 💡 Key Skills

**SQL | Postgres SQL | Data Analysis | Database Management | Joins | Subqueries | CTEs | Window Functions | Data Aggregation | Query Optimization**

---

## 👩‍💻 Author

**Shweta Rajput**

Aspiring **AIML Engineer | Data Analytics Enthusiast**

---

⭐ If you find this repository useful, feel free to explore the SQL practice problems and examples.
