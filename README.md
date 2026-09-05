# 🚀 SQL Learning Journey & Code Vault

Welcome to my personal SQL repository! This space serves as a dedicated log of my hands-on journey mastering Relational Database Management Systems, focusing on **T-SQL** and **Microsoft SQL Server** via **SQL Server Management Studio (SSMS)**.

Rather than just watching theory, every concept here is practiced, tested, and documented.

---

## 📌 Repository Core File

All primary query exercises, table definitions, and practical demonstrations are written and maintained in:
👉 **[`SQL-learning.sql`](./SQL-learning.sql)**

---

## 🧭 What I Have Mastered So Far

### 1. Database Modeling & Mapping
- [x] **Conceptual Modeling (ERD):** Entities, attributes (composite, derived, multi-valued), and relationships ($1:1$, $1:M$, $M:N$).
- [x] **Relational Schema Mapping:** Transforming ER models into physical database tables and mapping $M:N$ relationships using Junction/Bridge tables.

### 2. DDL (Data Definition Language)
- [x] Creating, modifying, and dropping databases and schemas (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`).
- [x] Enforcing data integrity using constraints: `PRIMARY KEY`, `FOREIGN KEY` (with `ON DELETE` / `ON UPDATE CASCADE`), `UNIQUE`, `CHECK`, and `NOT NULL`.
- [x] Handling temporal defaults (`DEFAULT GETDATE()`) and configuring **Computed Columns** (both virtual and `PERSISTED` on disk).

### 3. DML (Data Manipulation Language)
- [x] Inserting records (`INSERT INTO ... VALUES`, multi-row inserts).
- [x] Modifying existing data safely using conditional filters (`UPDATE ... SET ... WHERE`).
- [x] Removing targeted records (`DELETE FROM ... WHERE`) versus resetting tables (`TRUNCATE`).

### 4. DQL (Data Query Language) & SELECT Variations
- [x] Basic data retrieval (`SELECT *`, specific column projections, column aliasing with `AS`).
- [x] Eliminating duplicates (`SELECT DISTINCT`).
- [x] Row filtering and condition evaluation (`WHERE`, `AND`, `OR`, `NOT`, `IN`, `BETWEEN`, `LIKE` pattern matching).
- [x] Sorting and pagination logic (`ORDER BY ASC/DESC`, `TOP (N)`, `OFFSET-FETCH`).
- [x] Aggregations and grouping (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `GROUP BY`, `HAVING`).

---

## 🛠️ Tech Stack & Environment

- **Database Engine:** Microsoft SQL Server
- **IDE / Client:** SQL Server Management Studio (SSMS)
- **Language / Dialect:** Transact-SQL (T-SQL)
- **Version Control:** Git & GitHub

---

## 🔮 Upcoming Milestones

- [ ] Multi-table `JOIN` operations (`INNER`, `LEFT`, `RIGHT`, `FULL OUTER`, `CROSS`).
- [ ] Subqueries & Correlated Subqueries.
- [ ] Common Table Expressions (`WITH CTE`).
- [ ] Analytical & Window Functions (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `LEAD/LAG`).
- [ ] Indexing strategies and query optimization.