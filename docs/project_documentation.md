# Banking Management System — Project Documentation

## 1. Project Overview

The **Banking Management System** is a MySQL-based database project designed to manage core banking information such as customers, bank accounts, transactions, loans, employees, and branches.

The project demonstrates how SQL can be used to design a relational database, maintain data integrity, retrieve information using queries, combine related tables using joins, perform business analysis with aggregate functions and subqueries, and build reusable stored procedures.

### Main Objectives

- Store customer and banking information in a structured relational database.
- Maintain relationships between customers, accounts, transactions, loans, employees, and branches.
- Perform day-to-day banking data queries.
- Analyze account balances, transactions, loans, and customer activity.
- Practice SQL concepts from basic queries through advanced analytical SQL.
- Create reusable stored procedures for common banking operations.

---

## 2. Project Scope

The project covers:

1. Database and table creation
2. Sample data insertion
3. Basic SQL queries
4. Joins
5. Aggregate functions
6. Subqueries and derived tables
7. CTEs
8. Window functions
9. UPDATE and DELETE operations
10. Views
11. Stored procedures
12. Banking reports and analysis
13. Data-quality validation

---

## 3. Database Structure

Database name:

```sql
banking_management
```

### Tables

- `Customers`
- `Branches`
- `Accounts`
- `Transactions`
- `Loans`
- `Employees`

### Relationships

```text
Customers
   │
   ├──────────< Accounts >────────── Branches
   │                 │
   │                 └──────────< Transactions
   │
   └──────────< Loans

Employees >────────── Branches
```

### Key Relationships

- One customer can have multiple accounts.
- One account can have multiple transactions.
- One customer can have multiple loans.
- One branch can have multiple accounts.
- One branch can have multiple employees.

---

## 4. Table Reference

### Customers

| Column | Type | Description |
|---|---|---|
| customer_id | INT | Primary key |
| name | VARCHAR(100) | Customer name |
| email | VARCHAR(100) | Unique email |
| phone | VARCHAR(15) | Phone number |
| address | VARCHAR(255) | Customer address |
| registration_date | DATE | Registration date |

### Accounts

| Column | Type | Description |
|---|---|---|
| account_id | INT | Primary key |
| customer_id | INT | References Customers |
| branch_id | INT | References Branches |
| account_type | VARCHAR(50) | Savings/current/etc. |
| balance | DECIMAL(12,2) | Current account balance |
| opening_date | DATE | Account opening date |
| status | VARCHAR(20) | Active/inactive status |

### Transactions

| Column | Type | Description |
|---|---|---|
| transaction_id | INT | Primary key |
| account_id | INT | References Accounts |
| transaction_type | VARCHAR(20) | Deposit/withdrawal/etc. |
| amount | DECIMAL(10,2) | Transaction amount |
| transaction_date | DATE | Transaction date |

### Loans

| Column | Type | Description |
|---|---|---|
| loan_id | INT | Primary key |
| customer_id | INT | References Customers |
| loan_amount | DECIMAL(12,2) | Loan amount |
| interest_rate | DECIMAL(5,2) | Interest rate |
| loan_date | DATE | Loan date |

### Employees

| Column | Type | Description |
|---|---|---|
| employee_id | INT | Primary key |
| employee_name | VARCHAR(100) | Employee name |
| position | VARCHAR(50) | Job position |
| salary | DECIMAL(10,2) | Salary |
| joining_date | DATE | Joining date |
| branch_id | INT | References Branches |

### Branches

| Column | Type | Description |
|---|---|---|
| branch_id | INT | Primary key |
| branch_name | VARCHAR(100) | Branch name |
| location | VARCHAR(100) | Branch location |

---

## 5. Basic Queries

The project includes queries to:

- Display accounts with balance greater than `50000`.
- Show customers from Hyderabad.
- List savings accounts.
- Display employees who joined after 2022.
- Count total customers.
- Find average account balance.
- Calculate total loan amount.
- Count total transactions.
- Find the highest account balance.

---

## 6. Joins

The project uses joins to combine information across related banking tables.

Examples:

- Customer name with account information.
- Account information with transaction details.
- Loan information with customer details.
- Employees with their branches.
- Customers with their transactions.

SQL join concepts covered include:

- `INNER JOIN`
- `LEFT JOIN`
- Multi-table joins

---

## 7. Aggregate Functions

The project uses:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `COALESCE()`

Examples include customer counts, total loan amounts, average balances, transaction counts, and maximum account balances.

---

## 8. Subqueries and Derived Tables

Examples include:

- Customers who have no accounts.
- Accounts with no transactions.
- Accounts with balances above the average balance.
- Customers with loan amounts above the average loan amount.
- Transactions above the average transaction amount.

The project also uses derived tables for intermediate calculations and reporting.

---

## 9. CTEs

Common Table Expressions are used to make multi-step SQL analysis easier to read and maintain.

The project includes non-recursive CTE practice for analytical calculations and intermediate result sets.

---

## 10. Window Functions

The project includes:

- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`
- `FIRST_VALUE()`
- `LAST_VALUE()`
- `SUM() OVER()`
- `NTILE()`
- `PARTITION BY`
- Explicit `ROWS` window frames

These are used for ranking, transaction comparisons, running totals, customer/account analysis, and percentage contribution analysis.

---

## 11. Updates and Deletes

The project covers controlled data modification operations such as:

- Updating an account balance.
- Changing a customer email.
- Updating a branch location.
- Deleting inactive accounts where appropriate.
- Deleting customers who do not have accounts, subject to foreign-key constraints and related records.

> In a production banking database, destructive operations should be performed only after dependency checks and appropriate transaction controls.

---

## 12. Views

The project overview includes the following planned reporting views:

1. Customer accounts view
2. Transaction details view
3. Loan details with customer information
4. Total balance per customer view
5. High-value transactions view

These views provide reusable query layers for reporting.

---

## 13. Stored Procedures

### 1. Insert New Customer

Inserts a customer using:

- Name
- Email
- Phone
- Address
- Registration date

### 2. Update Account Balance

Updates an account balance using `account_id` and a new balance.

### 3. Display Transactions of an Account

Displays all transactions belonging to a specified account.

### 4. Calculate Total Bank Balance

Calculates the total balance across all accounts.

### 5. List Accounts of a Customer

Displays all accounts belonging to a specified customer.

---

## 14. Reports and Analysis

The project includes analysis such as:

### Top 5 Customers with Highest Balance

Ranks customers according to their total account balance.

### Most Active Customers

Identifies customers with the highest transaction activity.

### Monthly Transaction Report

Summarizes transaction activity by month.

### Branch with Highest Deposits

Compares deposit amounts across branches.

### Customer Transaction Analysis

Analyzes customer-level transaction behavior, transaction counts, and amounts.

### Highest Loan Customers

Ranks customers based on their total loan amount.

---

## 15. Data Quality Checks

The project also includes validation for issues such as:

- Missing account opening dates.
- Account opening dates after first transactions.
- Customer registration-date inconsistencies.
- Loan dates earlier than customer registration.
- Invalid joining dates.
- Invalid salary values.
- Invalid phone/email values.
- Missing branch references.
- Transactions before account opening.
- Loans before customer registration.
- Inactive accounts with transactions.
- Withdrawals exceeding available balance.
- Accounts without transactions.

---

## 16. Project Learning Outcomes

This project demonstrates practical SQL skills across database design, querying, analysis, and reusable database programming.

Key skills demonstrated:

- Relational database design
- Primary and foreign keys
- Constraints
- Data manipulation
- Filtering and sorting
- Aggregations
- Joins
- Subqueries
- Derived tables
- CTEs
- Window functions
- Stored procedures
- Data-quality analysis
- Banking-oriented reporting

---

## 17. Tools Used

- MySQL
- MySQL Command-Line Client
- SQL
- Git / GitHub

