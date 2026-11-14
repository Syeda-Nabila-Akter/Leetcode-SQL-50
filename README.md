# LeetCode SQL 50 | SQL Problem-Solving Portfolio

A collection of SQL solutions to the [LeetCode SQL 50 Study Plan](https://leetcode.com/studyplan/top-sql-50/), documenting hands-on practice in PostgreSQL, relational database querying, analytical functions, and problem-solving.

This repository serves as a structured record of my SQL learning journey, covering fundamental querying techniques through advanced SQL concepts, including joins, subqueries, Common Table Expressions (CTEs), window functions, and data aggregation.

---

## 🎯 Project Overview

The LeetCode SQL 50 Study Plan is a curated collection of SQL challenges designed to strengthen querying skills and develop a deeper understanding of relational databases.

I created this repository to consolidate my solutions, reinforce SQL concepts through practical implementation, and develop the ability to translate analytical requirements into efficient and readable queries.

**Key objectives:**

- Strengthen SQL fundamentals and advanced querying techniques.
- Develop a deeper understanding of relational database structures and relationships.
- Practise analytical querying using aggregate and window functions.
- Improve problem-solving skills through practical SQL challenges.
- Explore different approaches to retrieving, transforming, and analyzing structured data.
- Maintain a reusable reference for SQL revision and continued learning.

## 🛠️ Technologies & Tools

| Technology / Tool | Application |
|---|---|
| PostgreSQL | SQL query implementation |
| SQL | Relational querying and data manipulation |
| LeetCode | Problem statements and solution validation |
| Git | Version control |
| GitHub | Code organization and documentation |

## 📚 Topics & Technical Concepts

The repository is organized into topic-based SQL files, making individual solutions easier to navigate and review.

### 1. Select Statements

**File:** [`select.sql`](select.sql)

Fundamental SQL querying and data retrieval techniques.

Concepts covered:
- SELECT and DISTINCT
- WHERE clause
- Conditional filtering
- Comparison operators
- AND / OR logical operators
- NULL handling
- Pattern matching
- Basic data retrieval

**Practical focus:** Retrieving relevant records from relational tables using conditional expressions and filtering criteria.

### 2. Basic Joins

**File:** [`basic_joins.sql`](basic_joins.sql)

Understanding relationships between tables and combining data from multiple relational sources.

Concepts covered:
- INNER JOIN
- LEFT JOIN
- Table aliases
- Primary and foreign key relationships
- Joining tables using common attributes
- Handling unmatched records
- Combining multiple datasets

**Practical focus:** Retrieving related information across multiple tables while maintaining the correct relationships between records.

### 3. Advanced Select and Joins

**File:** [`advanced_select_and_joins.sql`](advanced_select_and_joins.sql)

Applying more advanced querying techniques to solve complex relational and analytical problems.

Concepts covered:
- Multiple-table joins
- Conditional expressions using CASE
- Common Table Expressions (CTEs)
- Window functions
- Cumulative aggregation
- ROW_NUMBER()
- LAG() and LEAD()
- Date-based filtering
- UNION and UNION ALL
- COALESCE()
- Complex filtering and aggregation

**Practical focus:** Breaking down complex querying requirements into logical steps and using advanced SQL operations to retrieve and transform data.

### 4. Basic Aggregate Functions

**File:** [`basic_aggregate_functions.sql`](basic_aggregate_functions.sql)

Using aggregate functions to summarize datasets and calculate meaningful metrics.

Concepts covered:
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING
- DISTINCT aggregation
- Conditional aggregation
- Aggregate-based filtering

**Practical focus:** Summarizing data, calculating metrics, and generating insights from grouped records.

### 5. Sorting and Grouping

**File:** [`sorting_and_grouping.sql`](sorting_and_grouping.sql)

Organizing query results and aggregating records based on common attributes.

Concepts covered:
- ORDER BY
- GROUP BY
- ASC and DESC
- HAVING
- Aggregate-based sorting
- Conditional grouping
- Filtering grouped records

**Practical focus:** Structuring analytical results and understanding how sorting, grouping, and aggregation work together.

### 6. Subqueries

**File:** [`subqueries.sql`](subqueries.sql)

Using nested queries to solve problems involving multiple levels of data retrieval and transformation.

Concepts covered:
- Nested SELECT statements
- Scalar subqueries
- Subqueries in WHERE clauses
- Subqueries in FROM clauses
- IN and NOT IN
- EXISTS and NOT EXISTS
- Correlated subqueries
- Comparing values against aggregated results

**Practical focus:** Decomposing complex SQL problems into smaller logical operations and using intermediate query results to derive the required output.

### 7. Advanced String Functions and Regular Expressions

**File:** [`Advanced_String-Functions-Regex-Clause.sql`](Advanced_String-Functions-Regex-Clause.sql)

Working with textual data and applying pattern-based operations.

Concepts covered:
- String manipulation
- CONCAT()
- UPPER() and LOWER()
- SUBSTRING()
- LENGTH()
- Pattern matching using LIKE
- Regular expressions
- PostgreSQL regex operators
- Text-based filtering and validation

**Practical focus:** Cleaning, transforming, extracting, and validating textual information using SQL string functions and regular expressions.

---

## 📊 Window Functions Practised

Window functions are an important part of my SQL practice, particularly for analytical queries that require calculations across related rows without collapsing the result set.

I have already implemented and practised the following functions in my solutions:

| Function | Application |
|---|---|
| ROW_NUMBER() | Assigning sequential numbers to rows within partitions |
| RANK() | Ranking records while accounting for ties |
| DENSE_RANK() | Ranking records without gaps between rank values |
| LAG() | Accessing values from preceding rows |
| LEAD() | Accessing values from subsequent rows |
| SUM() OVER() | Calculating cumulative and running totals |

These functions have been applied to problems involving ranking, identifying duplicate records, comparing sequential values, retrieving historical values, and calculating cumulative totals.

## 🧠 Problem-Solving Approach

My approach to solving SQL challenges focuses on understanding the underlying data relationships and developing a logical solution before implementing the query.

For each problem, I generally follow these steps:

**1. Understand the requirement**

Identify the expected output, relevant columns, filtering conditions, and relationships between tables.

**2. Analyze the data structure**

Examine the available tables, primary keys, foreign keys, and potential edge cases.

**3. Develop the query logic**

Determine the appropriate SQL operations, such as joins, aggregations, subqueries, CTEs, or window functions.

**4. Implement the solution**

Write a structured SQL query with an emphasis on readability and logical correctness.

**5. Validate the result**

Execute the query against the provided test cases on LeetCode and verify that the output satisfies the problem requirements.

**6. Review the implementation**

Revisit the query to understand why it works and identify alternative approaches or opportunities for improvement.

## 📈 Skills Demonstrated

Through these challenges, I have developed practical experience in:

- Relational data retrieval and filtering.
- Joining and combining multiple datasets.
- Aggregation and analytical calculations.
- Handling NULL values and conditional expressions.
- Writing nested queries and CTEs.
- Applying ranking and offset-based window functions.
- Performing cumulative calculations.
- Identifying duplicates and handling sequential records.
- Manipulating and validating textual data.
- Translating analytical requirements into SQL queries.
- Structuring readable and logically organized SQL solutions.

## 🚀 What's Next?

Completing the SQL 50 challenges is one milestone in my continued development as a data professional.

Building on the concepts already practised, my next learning objectives include:

- **Advanced CTEs:** Recursive CTEs and complex multi-step transformations.
- **Advanced Window Functions:** More complex partitioning, framing clauses, and analytical calculations.
- **Date & Time Operations:** Advanced date arithmetic, time-series analysis, and interval-based calculations.
- **Query Optimization:** Understanding execution plans, query performance, and optimization techniques.
- **Database Indexing:** Index structures, index selection, and their impact on query performance.
- **Data Modeling:** Relational schema design, normalization, and dimensional modeling.
- **Database Internals:** Transactions, ACID properties, isolation levels, and concurrency.
- **Practical SQL Projects:** Applying SQL to real-world datasets and end-to-end analytical workflows.

My goal is to move beyond solving isolated coding challenges and apply SQL effectively in practical data engineering and analytical scenarios.

---

## 🔗 Connect & Explore

- **GitHub Profile:** [Syeda-Nabila-Akter](https://github.com/Syeda-Nabila-Akter)
- **LeetCode SQL 50 Repository:** [View Repository](https://github.com/Syeda-Nabila-Akter/Leetcode-SQL-50)
- **LeetCode Study Plan:** [SQL 50](https://leetcode.com/studyplan/top-sql-50/)

---

*Consistent practice, understanding the underlying logic, and learning through implementation are central to my approach to becoming a stronger SQL and data professional.*
