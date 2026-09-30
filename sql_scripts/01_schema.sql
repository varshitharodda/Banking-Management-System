-- Banking Management System
-- 01_schema.sql
-- DDL: database, tables and constraints

CREATE DATABASE IF NOT EXISTS banking_management;
USE banking_management;

CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(255),
    registration_date DATE
);

CREATE TABLE IF NOT EXISTS Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    branch_id INT NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(12,2) DEFAULT 0.00,
    opening_date DATE,
    status VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id),
    CHECK (balance >= 0)
);

CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    branch_id INT NOT NULL,
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

CREATE TABLE IF NOT EXISTS Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_type VARCHAR(20) NOT NULL,
    amount DECIMAL(10,2),
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
