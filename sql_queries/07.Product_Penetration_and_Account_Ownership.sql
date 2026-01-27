--Product Penetration & Account Ownership

--Percentage of customers with saving accounts
SELECT 
    ROUND(SUM(CASE WHEN saving_accounts > 0 THEN 1 END) / COUNT(*) * 100, 2) AS saving_account_penetration
FROM CUSTOMER;

--Percentage of customers with Credit cards
SELECT 
    ROUND(SUM(CASE WHEN amount_of_credit_cards > 0 THEN 1 END) / COUNT(*) * 100, 2) AS Credit_cards_penetration
FROM CUSTOMER;

--Good income, low number of credit cards
SELECT 
       name, 
       estimated_income, 
       amount_of_credit_cards
FROM CUSTOMER
WHERE estimated_income > 250000
AND amount_of_credit_cards <= 2;

--Average superannuation savings by occupation
SELECT 
      occupation, 
      ROUND(AVG(superannuation_savings)) AS Average_superannuation_savings
FROM CUSTOMER
GROUP BY occupation
ORDER BY AVG(superannuation_savings) DESC;

--Customers with foreign currency accounts
SELECT 
      name, 
      nationality
FROM CUSTOMER
WHERE foreign_currency_account > 0;

--Total Customers per Product Category
SELECT
    SUM(CASE WHEN saving_accounts > 0 THEN 1 ELSE 0 END) AS customers_with_savings,
    SUM(CASE WHEN checking_accounts > 0 THEN 1 ELSE 0 END) AS customers_with_checking,
    SUM(CASE WHEN business_lending > 0 THEN 1 ELSE 0 END) AS customers_with_business_lending,
    SUM(CASE WHEN foreign_currency_account > 0 THEN 1 ELSE 0 END) AS customers_with_foreign_currency,
    SUM(CASE WHEN amount_of_credit_cards > 0 THEN 1 ELSE 0 END) AS customers_with_credit_cards
FROM CUSTOMER;

--number of products per customer
SELECT 
      num_products, COUNT(*) AS customer_count
FROM (
    SELECT
        (CASE WHEN saving_accounts > 0 THEN 1 ELSE 0 END +
         CASE WHEN checking_accounts > 0 THEN 1 ELSE 0 END +
         CASE WHEN business_lending > 0 THEN 1 ELSE 0 END +
         CASE WHEN foreign_currency_account > 0 THEN 1 ELSE 0 END +
         CASE WHEN amount_of_credit_cards > 0 THEN 1 ELSE 0 END
        ) AS num_products
    FROM CUSTOMER
)
GROUP BY num_products
ORDER BY num_products;

--Name against banking products count per customer
SELECT 
    name,
    CASE WHEN saving_accounts > 0 THEN 1 ELSE 0 END +
    CASE WHEN checking_accounts > 0 THEN 1 ELSE 0 END +
    CASE WHEN business_lending > 0 THEN 1 ELSE 0 END +
    CASE WHEN foreign_currency_account > 0 THEN 1 ELSE 0 END +
    CASE WHEN amount_of_credit_cards > 0 THEN 1 ELSE 0 END AS total_products
FROM CUSTOMER
ORDER BY total_products DESC;













