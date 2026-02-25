# northwind-sql-portfolio
SQL example queries using the Northwind database
# Northwind SQL Portfolio Project

## 📌 About This Project
I created this project to demonstrate my SQL skills using the classic Northwind database. The Northwind database contains data for a fictional food trading company with customers, orders, products, and employees [citation:1].

## 🛠️ Skills Demonstrated
- **JOINS:** INNER, LEFT, and SELF joins to connect related tables
- **AGGREGATIONS:** COUNT, SUM, AVG with GROUP BY
- **SUBQUERIES:** Nested and correlated subqueries
- **ADVANCED:** Window functions (RANK) and CTEs
- **FILTERING:** WHERE, HAVING, and ORDER BY clauses

## 📊 Database Overview
Northwind contains 14 tables including:
- Customers (91 customers)
- Orders (830 orders)
- Products (77 products)
- Employees (9 employees)
- Order Details (order line items)

## 🔍 Key Business Questions Answered
1. Which customers have never placed an order?
2. Which countries generate the most orders?
3. What products cost more than the average price?
4. Who are the highest-value customers?
5. How do employees rank by sales?

## 📝 The 10 Queries I Wrote
| Query | Description | File |
|-------|-------------|------|
| 1 | Connect orders with customer names | `01_inner_join.sql` |
| 2 | Find customers with no orders | `02_left_join.sql` |
| 3 | Show employee/manager relationships | `03_self_join.sql` |
| 4 | Calculate order statistics | `04_aggregation.sql` |
| 5 | Count orders by country | `05_group_by.sql` |
| 6 | Filter countries with >10 orders | `06_having.sql` |
| 7 | Find products above average price | `07_subquery.sql` |
| 8 | Count orders per customer | `08_correlated_subquery.sql` |
| 9 | Rank products by price in category | `09_window_function.sql` |
| 10 | List customers with >10 orders | `10_cte.sql` |

## 🚀 How to Run These Queries
1. Download and install SQL Server
2. Download the Northwind database script from Microsoft
3. Run the script to create the database
4. Open and execute each .sql file in SSMS

## 📫 Connect With Me
- **LinkedIn:** www.linkedin.com/in/lance-cecil-gallant-681b71389
- **Email:** Lancegallant7@gmail.com

## 📅 Created
February 2026
