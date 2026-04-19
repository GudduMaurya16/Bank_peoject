select * from European_Bank;

SELECT * FROM  European_Bank
WHERE creditscore IS NULL OR balance IS NULL;

-- Remove duplicates
SELECT CustomerId, COUNT(*)
FROM European_Bank
GROUP BY CustomerId
HAVING COUNT(*) > 1

-- Basic cleaning
UPDATE European_Bank
SET balance = 0
WHERE balance IS NULL;



-- Remove duplicates
SELECT CustomerId, COUNT(*)
FROM European_Bank
GROUP BY CustomerId
HAVING COUNT(*) > 1;

-- Basic cleaning
UPDATE European_Bank
SET balance = 0
WHERE balance IS NULL;

--total customers
SELECT COUNT(*) AS total_customers FROM European_Bank;

--Average Balance
SELECT AVG(Balance) AS avg_balance FROM European_Bank;

--Customers by Geography
SELECT Geography, COUNT(*) AS total
FROM European_Bank
GROUP BY Geography;


--High Risk Segment
SELECT *
FROM European_Bank
WHERE Balance > 0.5
AND IsActiveMember = 0
AND Exited = 1;


--Active vs Inactive Customers  
SELECT IsActiveMember, COUNT(*) 
FROM European_Bank
GROUP BY IsActiveMember;


--Gender Encoding
SELECT *,
    CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END AS Gender_Male
FROM European_Bank;


--Geography Encoding
SELECT *,
    CASE WHEN Geography = 'France' THEN 1 ELSE 0 END AS Geo_France,
    CASE WHEN Geography = 'Germany' THEN 1 ELSE 0 END AS Geo_Germany,
    CASE WHEN Geography = 'Spain' THEN 1 ELSE 0 END AS Geo_Spain
FROM European_Bank;


--Product Density
SELECT *,
    NumOfProducts / NULLIF(Tenure,0) AS Product_Density
FROM European_Bank;


--Balance-to-Salary Ratio
SELECT *,
    Balance / NULLIF(EstimatedSalary,0) AS Balance_Salary_Ratio
FROM European_Bank;

