--Comparative & Behavioral Insights

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

---Do older customers borrow more
SELECT 
    FLOOR(Age/10)*10 AS age_group,
    COUNT(*) AS customers,
    ROUND(AVG(bank_deposits), 2) AS avg_bank_deposits
FROM CUSTOMER
GROUP BY FLOOR(Age/10)*10
ORDER BY age_group;

--Do older customers save more
SELECT 
    FLOOR(Age/10)*10 AS age_group,
    COUNT(*) AS customers,
    ROUND(AVG(bank_loans), 2) AS avg_loan
FROM CUSTOMER
GROUP BY FLOOR(Age/10)*10
ORDER BY age_group;

SELECT 
    CASE 
        WHEN AGE < 25 THEN 'Under 25'
        WHEN AGE BETWEEN 25 AND 40 THEN '25–40'
        WHEN AGE BETWEEN 41 AND 60 THEN '41–60'
        ELSE '60+'
    END AS AGE_GROUP,
    properties_owned,
    COUNT(client_id) AS total_clients,

    ROUND(AVG(estimated_income)) AS avg_income,
    ROUND(AVG(superannuation_savings)) AS avg_super_savings,

    ROUND(AVG(credit_card_balance)) AS avg_cc_balance,
    ROUND(AVG(amount_of_credit_cards)) AS avg_num_credit_cards,

    ROUND(AVG(bank_loans)) AS avg_bank_loans,
    ROUND(AVG(bank_deposits)) AS avg_bank_deposits,

    ROUND(AVG(checking_accounts)) AS avg_checking_balance,
    ROUND(AVG(saving_accounts)) AS avg_savings_balance,

    ROUND(AVG(risk_weighting)) AS avg_risk_weight

FROM CUSTOMER
GROUP BY
    CASE
        WHEN AGE < 25 THEN 'Under 25'
        WHEN AGE BETWEEN 25 AND 40 THEN '25–40'
        WHEN AGE BETWEEN 41 AND 60 THEN '41–60'
        ELSE '60+'
    END,
    properties_owned
ORDER BY
    AGE_GROUP,
    properties_owned;












