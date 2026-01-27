--Credit Card Usage Analysis

--Average credit card balance by occupation
SELECT 
      occupation, 
      ROUND(AVG(Credit_Card_Balance)) AS avg_balance
FROM CUSTOMER
GROUP BY occupation;

--Average credit card balance by loyalty classification
SELECT 
      Loyalty_Classification, 
      ROUND(AVG(Credit_Card_Balance)) AS avg_balance
FROM CUSTOMER
GROUP BY Loyalty_Classification;

--Average credit card balance by number of credit cards
SELECT 
      amount_of_credit_cards, 
      ROUND(AVG(Credit_Card_Balance)) AS avg_balance
FROM CUSTOMER
GROUP BY amount_of_credit_cards;

  --List of customers with cards but no loans
SELECT 
    Client_ID,
    Name,
    Amount_of_Credit_Cards,
    Bank_Loans
FROM CUSTOMER
WHERE Amount_of_Credit_Cards > 0
AND (Bank_Loans = 0 OR Bank_Loans IS NULL);

--customers with loans but no credit cards
SELECT 
    Client_ID,
    Name,
    Bank_Loans,
    Amount_of_Credit_Cards
FROM CUSTOMER
WHERE Bank_Loans > 0
AND (Amount_of_Credit_Cards = 0 OR Amount_of_Credit_Cards IS NULL);

--Percentage of customers with Credit cards
SELECT 
    ROUND(SUM(CASE WHEN amount_of_credit_cards > 0 THEN 1 END) / COUNT(*) * 100, 2) AS Credit_cards_penetration
FROM CUSTOMER;
















