# Banking Management System — Project Reference

## 1. Project Purpose

This document is a quick reference for the database structure, SQL modules, business questions, and stored procedures used in the Banking Management System.

## 2. Database

```sql
banking_management
```

## 3. Tables

| Table | Purpose | Main Key |
|---|---|---|
| Customers | Stores customer details | customer_id |
| Branches | Stores branch details | branch_id |
| Accounts | Stores customer bank accounts | account_id |
| Transactions | Stores account transactions | transaction_id |
| Loans | Stores customer loans | loan_id |
| Employees | Stores branch employees | employee_id |

## 4. Relationship Reference

```text
Customers (1) ──────── (Many) Accounts
Customers (1) ──────── (Many) Loans
Accounts  (1) ──────── (Many) Transactions
Branches  (1) ──────── (Many) Accounts
Branches  (1) ──────── (Many) Employees
```

## 5. SQL Script Order

Run the scripts in this order:

```text
01_schema.sql
02_data_insertion.sql
03_basic_queries.sql
04_joins_aggregations.sql
05_ctes_subqueries_window_functions.sql
06_stored_procedures.sql
```

## 6. Query Reference

### Basic Queries

- Accounts with balance > 50000
- Customers from Hyderabad
- Savings accounts
- Employees joined after 2022

### Joins

- Customers + Accounts
- Accounts + Transactions
- Customers + Loans
- Employees + Branches
- Customers + Transactions

### Aggregations

- Total customers
- Average account balance
- Total loan amount
- Total transactions
- Highest account balance

### Subqueries

- Customers without accounts
- Accounts without transactions
- Above-average balances
- Above-average loans
- Above-average transactions

### Reports

- Top 5 customers by balance
- Most active customers
- Monthly transaction report
- Branch with highest deposits
- Customer transaction analysis
- Highest loan customers

## 7. Stored Procedure Reference

| Procedure | Purpose |
|---|---|
| InsertNewCustomer | Insert a new customer |
| UpdateAccountBalance | Update an account balance |
| DisplayAccountTransactions | Display transactions for an account |
| CalculateTotalBankBalance | Calculate total account balance |
| ListCustomerAccounts | Display accounts for a customer |

## 8. SQL Concepts Covered

```text
DDL
DML
SELECT / WHERE
ORDER BY / LIMIT / DISTINCT
GROUP BY / HAVING
Aggregate Functions
INNER JOIN
LEFT JOIN
Subqueries
Derived Tables
CTEs
CASE
Window Functions
Stored Procedures
Data Quality Checks
```

## 9. Window Function Reference

```text
ROW_NUMBER()
RANK()
DENSE_RANK()
LAG()
LEAD()
FIRST_VALUE()
LAST_VALUE()
SUM() OVER()
NTILE()
PARTITION BY
ROWS BETWEEN ...
```

## 10. Project Data Reference

The project dataset contains approximately:

- 50 customers
- 10 branches
- 70 accounts
- 30 employees
- 30 loans
- 300 transactions

## 11. Important Implementation Note

The reference schema used in this project includes `branch_id` and `status` in `Accounts`, and `branch_id` in `Employees`. These fields are required to support branch-level reporting and employee/branch relationships.

The SQL scripts should remain consistent with the final schema rather than using a simplified schema that omits those relationships.
