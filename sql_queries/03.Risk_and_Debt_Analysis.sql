--Risk_and_Debt_Analysis

--Average bank deposits and loans
SELECT 
    ROUND(AVG(bank_deposits)) As avg_deposits,
    ROUND(AVG(bank_loans)) As avg_loans 
FROM CUSTOMER;

--Debt to income ratio
SELECT NAME,
   ROUND((BANK_LOANS+CREDIT_CARD_BALANCE)/ESTIMATED_INCOME,2)
   As debt_to_income_ratio
FROM CUSTOMER
ORDER BY debt_to_income_ratio DESC;

--Identification of customers with high loan-to-income ratios
SELECT NAME,
   ROUND((BANK_LOANS)/ESTIMATED_INCOME,2)
   As debt_to_income_ratio
FROM CUSTOMER
ORDER BY debt_to_income_ratio DESC
FETCH FIRST 100 ROWS ONLY;

--Loan dominant vs deposit dominant customers
SELECT
      CASE WHEN  BANK_DEPOSITS > BANK_LOANS THEN 'Deposit_Dominant'
      ELSE 'Loan_Dominant'
      END As Segment,
COUNT(*)
FROM CUSTOMER
GROUP BY
      CASE WHEN  BANK_DEPOSITS > BANK_LOANS THEN 'Deposit_Dominant'
      ELSE 'Loan_Dominant'
 END;

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



























