# Banking Management System

A **MySQL-based Banking Management System** designed to manage customers, bank accounts, transactions, loans, employees, and branches while demonstrating practical SQL querying and data analysis.

## Project Overview

This project simulates a relational banking database and covers the complete SQL workflow from database creation and data insertion to analytical reporting and stored procedures.

### Main Modules

- Customer Management
- Account Management
- Transaction Management
- Loan Management
- Employee Management
- Branch Management
- Banking Reports and Analysis

## Database Schema

The project contains six related tables:

```text
Customers
    │
    ├── Accounts ──── Transactions
    │       │
    │       └──── Branches
    │
    └── Loans

Employees ──── Branches
```

## Tables

- `Customers`
- `Accounts`
- `Transactions`
- `Loans`
- `Employees`
- `Branches`

## SQL Concepts Used

- Database and table creation
- Primary keys and foreign keys
- `NOT NULL`, `UNIQUE`, `DEFAULT`, and `CHECK` constraints
- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `DISTINCT`
- `GROUP BY` and `HAVING`
- Aggregate functions
- `INNER JOIN` and `LEFT JOIN`
- Multi-table joins
- Subqueries
- Derived tables
- CTEs
- `CASE`
- Window functions
- Stored procedures
- Data-quality checks

## Basic Banking Queries

The project covers questions such as:

- Which accounts have balances greater than 50,000?
- Which customers are from Hyderabad?
- Which accounts are savings accounts?
- Which employees joined after 2022?
- What is the average account balance?
- What is the total loan amount?
- Which account has the highest balance?

## Joins

Examples include:

- Customer name with account information
- Account with transaction details
- Loan details with customer information
- Employees with their branch
- Customers with their transactions

## Subqueries

Examples include:

- Customers with no accounts
- Accounts with no transactions
- Accounts above average balance
- Customers with above-average loan amounts
- Transactions above average transaction amount

## Views

The project overview includes reporting views for:

- Customer accounts
- Transaction details
- Loan details with customers
- Total balance per customer
- High-value transactions

## Stored Procedures

Five reusable procedures are included in the project design:

1. `InsertNewCustomer`
2. `UpdateAccountBalance`
3. `DisplayAccountTransactions`
4. `CalculateTotalBankBalance`
5. `ListCustomerAccounts`

## Reports / Analysis

- Top 5 customers with highest balance
- Most active customers
- Monthly transaction report
- Branch with highest deposits
- Customer transaction analysis
- Highest loan customers

## Project Data

| Table | Approx. Records |
|---|---:|
| Customers | 50 |
| Branches | 10 |
| Accounts | 70 |
| Employees | 30 |
| Loans | 30 |
| Transactions | 300 |

## Project Structure

```text
banking-management-system/
│
├── README.md
│
├── docs/
│   └── project_documentation.md
│
├── project_reference/
│   ├── project_reference.md
│   └── project_sql_log.txt
│
└── sql_scripts/
    ├── 01_schema.sql
    ├── 02_data_insertion.sql
    ├── 03_basic_queries.sql
    ├── 04_joins_aggregations.sql
    ├── 05_ctes_subqueries_window_functions.sql
    └── 06_stored_procedures.sql
```

## SQL Script Execution Order

Run the scripts in this order:

```text
01_schema.sql
02_data_insertion.sql
03_basic_queries.sql
04_joins_aggregations.sql
05_ctes_subqueries_window_functions.sql
06_stored_procedures.sql
```

## Documentation

- **Project Documentation:** `docs/project_documentation.md`
- **Project Reference:** `project_reference/project_reference.md`
- **Original SQL execution/reference log:** `project_reference/project_sql_log.txt`
- **SQL scripts:** `sql_scripts/`

## Tools Used

- MySQL
- SQL
- MySQL Command-Line Client
- Git
- GitHub

## Purpose of the Project

This project was created as a practical SQL portfolio project to demonstrate database design, querying, data analysis, advanced SQL techniques, and reusable database programming in a banking domain.
=======
# Banking-Management-System
A  MySQL-based Banking Management System designed to manage customers, bank accounts, transactions, loans, employees, and branches while demonstrating practical SQL querying and data analysis.

