# Bank_peoject
🔷 Project Title

Bank Customer Analysis Dashboard using SQL & Power BI

🔷 1. Project Objective (Simple)

Analyze bank customer data to find:

Customer behavior
Account balance trends
Risk (churn / inactive users)
Business insights
🔷 2. Tools Used
SQL (MySQL / SQL Server) → Data cleaning & analysis
Power BI → Dashboard & visualization
🔷 3. Step-by-Step Process
🟢 Step 1: Import Data into SQL
CREATE DATABASE bank_project;

USE bank_project;

CREATE TABLE customers (
    customer_id INT,
    credit_score INT,
    country VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    tenure INT,
    balance FLOAT,
    products INT,
    has_credit_card INT,
    is_active INT,
    salary FLOAT,
    exited INT
);

👉 Import your CSV file into this table.

🟢 Step 2: Data Cleaning (SQL)
-- Check null values
SELECT * FROM customers
WHERE credit_score IS NULL OR balance IS NULL;

-- Remove duplicates
SELECT customer_id, COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Basic cleaning
UPDATE customers
SET balance = 0
WHERE balance IS NULL;
🟢 Step 3: Data Analysis Queries
📌 1. Total Customers
SELECT COUNT(*) AS total_customers FROM customers;
📌 2. Average Balance
SELECT AVG(balance) AS avg_balance FROM customers;
📌 3. Customers by Country
SELECT country, COUNT(*) AS total
FROM customers
GROUP BY country;
📌 4. Churn Rate (Exited Customers)
SELECT 
    COUNT(*) AS total,
    SUM(exited) AS churned,
    (SUM(exited) * 100.0 / COUNT(*)) AS churn_rate
FROM customers;
📌 5. Active vs Inactive Customers
SELECT is_active, COUNT(*) 
FROM customers
GROUP BY is_active;
🟢 Step 4: Connect SQL to Power BI
Open Power BI
Click Get Data → SQL Server
Enter your database
Load the table
🟢 Step 5: Power BI Dashboard Ideas
📊 Charts to Create:
Bar Chart → Customers by Country
Pie Chart → Active vs Inactive
Line Chart → Age vs Balance
Card → Total Customers
Card → Avg Balance
Card → Churn Rate
🟢 Step 6: Important KPIs
Total Customers
Average Balance
Churn Rate
Active Customers %

Conclusion
SQL helped in data processing
Power BI provided clear insights
Business can reduce churn using data

