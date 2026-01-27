--Income, Deposits & Wealth Analysis

--Average bank deposits and loans
SELECT 
    ROUND(AVG(bank_deposits)) As avg_deposits,
    ROUND(AVG(bank_loans)) As avg_loans 
FROM CUSTOMER;

--Average deposits vs income
SELECT 
    ROUND(AVG(estimated_income)) AS avg_income,
    ROUND(AVG(bank_deposits)) AS avg_deposits
FROM CUSTOMER;

--Rank customers by deposits
SELECT 
    name,
    bank_deposits,
    RANK() OVER (ORDER BY bank_deposits DESC) AS deposit_rank
FROM CUSTOMER;

--Deposits by number of properties owned
SELECT 
      properties_owned, 
      ROUND(AVG(bank_deposits))
FROM CUSTOMER
GROUP BY properties_owned
ORDER BY properties_owned;

--Average superannuation savings by occupation
SELECT 
      occupation, 
      ROUND(AVG(superannuation_savings)) AS Average_superannuation_savings
FROM CUSTOMER
GROUP BY occupation
ORDER BY AVG(superannuation_savings) DESC;





























