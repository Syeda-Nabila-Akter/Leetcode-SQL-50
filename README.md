# LeetCode SQL 50 — SQL Problem-Solving Portfolio

A structured collection of SQL solutions to the [LeetCode SQL 50 Study Plan](https://leetcode.com/studyplan/top-sql-50/), covering fundamental to advanced SQL concepts through practical problem-solving.

This repository documents my hands-on practice in writing SQL queries, strengthening relational database concepts, and developing problem-solving skills for data analytics and data engineering.

## 🎯 About This Repository

The **LeetCode SQL 50 Study Plan** is a curated collection of 50 SQL problems designed to help learners build a strong foundation in SQL and progress towards more advanced querying techniques.

I created this repository to:

- Strengthen my understanding of SQL fundamentals and advanced querying techniques.
- Practise translating business requirements into logical SQL queries.
- Improve my ability to work with relational data, filtering, aggregation, and table relationships.
- Develop problem-solving skills through practical SQL challenges.
- Maintain a structured and accessible record of my learning progress.
- Build consistency in writing clean, readable, and efficient SQL queries.

Rather than keeping individual solutions scattered across different platforms, this repository brings them together in a topic-based structure for easier navigation and revision.

## 🛠️ Technologies & Tools

| Technology | Purpose |
|---|---|
| SQL | Query writing and problem-solving |
| MySQL & PostgreSQL | SQL syntax and query implementation |
| LeetCode | Problem statements, test cases, and validation |
| Git & GitHub | Version control and solution documentation |

## 📚 Topics Covered

The solutions are organized into separate SQL files based on the concepts they address.

### 1. SELECT Statements

**File:** [`select.sql`](select.sql)

Fundamental SQL querying techniques, including:

- SELECT statements and column selection
- WHERE clause and conditional filtering
- AND / OR logical operators
- NULL value handling
- DISTINCT keyword
- Comparison operators
- Basic sorting and filtering conditions

**Learning focus:** Retrieving relevant information from relational tables and applying conditions to obtain the required records.

### 2. Basic Joins

**File:** [`basic_joins.sql`](basic_joins.sql)

Understanding relationships between tables and retrieving information from multiple data sources.

Key concepts:

- INNER JOIN
- LEFT JOIN
- Joining tables using common keys
- Understanding primary and foreign key relationships
- Handling unmatched records
- Combining related datasets

**Learning focus:** Understanding relational data structures and combining information across multiple tables.

### 3. Advanced SELECT and Joins

**File:** [`advanced_select_and_joins.sql`](advanced_select_and_joins.sql)

Building on fundamental querying and join techniques to solve more complex relational data problems.

Key concepts include:

- Multiple-table queries
- Conditional filtering
- Complex join conditions
- Combining filtering and relational operations
- Working with related records

**Learning focus:** Writing more structured queries to retrieve information from interconnected datasets.

### 4. Basic Aggregate Functions

**File:** [`basic_aggregate_functions.sql`](basic_aggregate_functions.sql)

Working with aggregate functions to summarize and analyze data.

Key concepts:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING
- Aggregate calculations

**Learning focus:** Summarizing datasets, calculating metrics, and extracting meaningful information through aggregation.

### 5. Sorting and Grouping

**File:** [`sorting_and_grouping.sql`](sorting_and_grouping.sql)

Organizing query results and grouping records based on common attributes.

Key concepts:

- ORDER BY
- GROUP BY
- ASC and DESC
- Conditional grouping
- Aggregate-based filtering
- Sorting aggregated results

**Learning focus:** Organizing and presenting query results in a meaningful way while understanding how grouping affects aggregation.

### 6. Subqueries

**File:** [`subqueries.sql`](subqueries.sql)

Solving problems using nested queries and intermediate result sets.

Key concepts:

- Nested SELECT statements
- Scalar subqueries
- Subqueries in WHERE clauses
- Subqueries in FROM clauses
- IN and NOT IN
- EXISTS and NOT EXISTS
- Comparing values against aggregated results

**Learning focus:** Breaking complex querying requirements into smaller logical operations and using intermediate results to solve problems.

### 7. Advanced String Functions and Regular Expressions

**File:** [`Advanced_String-Functions-Regex-Clause.sql`](Advanced_String-Functions-Regex-Clause.sql)

Working with textual data and applying pattern-based conditions.

Key concepts:

- String manipulation
- String functions
- Pattern matching
- Regular expressions
- Text-based filtering
- Data validation through string conditions

**Learning focus:** Extracting, filtering, and validating information from text-based columns.

---

## 📂 Repository Structure

```text
Leetcode-SQL-50/
│
├── select.sql
│
├── basic_joins.sql
│
├── advanced_select_and_joins.sql
│
├── basic_aggregate_functions.sql
│
├── sorting_and_grouping.sql
│
├── subqueries.sql
│
├── Advanced_String-Functions-Regex-Clause.sql
│
└── README.md
```

Each SQL file contains solutions grouped by topic. Individual problems are documented using their LeetCode problem numbers and titles, followed by the corresponding SQL implementation.

This structure makes it easier to revisit specific concepts, compare approaches, and use the repository as a reference for future SQL practice.

## 💡 My Approach to Problem-Solving

For each problem, I focus on understanding the underlying requirement before writing the query.

My general approach involves:

1. **Understanding the problem:** Identifying the expected output, relevant tables, and conditions.
2. **Analyzing the data:** Understanding table relationships, column properties, and possible edge cases.
3. **Designing the query:** Selecting appropriate SQL clauses, functions, joins, or subqueries.
4. **Implementing the solution:** Writing a query that addresses the problem requirements.
5. **Validating the output:** Testing the solution against the provided test cases on LeetCode.
6. **Reviewing the logic:** Understanding why the query works and identifying opportunities to improve readability or efficiency.

My emphasis is on developing a solid understanding of SQL logic rather than simply memorizing solutions.

## 📈 Learning Outcomes

Working through these problems provides practical experience with several important SQL capabilities:

- Retrieving and filtering structured data.
- Understanding relational database concepts.
- Combining datasets using joins.
- Performing aggregations and calculating metrics.
- Working with NULL values and conditional expressions.
- Writing nested queries and handling intermediate result sets.
- Manipulating and filtering string-based data.
- Translating analytical requirements into SQL queries.
- Improving query readability and logical structure.

These skills form an important foundation for data analytics, database management, and data engineering workflows.

## 🚀 Future Learning Goals

Completing the SQL 50 study plan is part of a broader effort to strengthen my SQL proficiency.

My next learning objectives include:

- Advanced window functions: ROW_NUMBER(), RANK(), DENSE_RANK(), LAG(), and LEAD().
- Common Table Expressions (CTEs).
- Recursive CTEs.
- Advanced date and time operations.
- Complex analytical queries.
- Query optimization and execution plans.
- Indexing and database performance fundamentals.
- Practical data modeling and database design.

I also plan to apply these concepts to practical datasets and SQL-based projects beyond coding challenges.

## 🔗 Connect & Explore

- **GitHub:** [Syeda-Nabila-Akter](https://github.com/Syeda-Nabila-Akter)
- **Repository:** [LeetCode SQL 50](https://github.com/Syeda-Nabila-Akter/Leetcode-SQL-50)
- **LeetCode:** [My LeetCode Profile](https://leetcode.com/)

---

*Continuous practice, understanding the underlying logic, and learning through implementation are central to my approach to becoming a stronger SQL and data professional.*
