--Customer Loyalty & Retention

--Loyalty classification updates using business rules 
--Updating jade to bronze under loyalty classification
UPDATE CUSTOMER
SET Loyalty_Classification ='Bronze'
WHERE Loyalty_Classification ='Jade';

--customer distribution by loyalty satisfaction  
SELECT 
      Loyalty_Classification, COUNT (*) As Total
FROM CUSTOMER
GROUP BY Loyalty_Classification
ORDER BY Total DESC;

---High end customer loyalty satisfaction analysis
SELECT 
      name, 
      age, 
      estimated_income
FROM CUSTOMER
WHERE estimated_income > 250000
AND loyalty_classification IN ('Gold','Platinum');

--Identify customers likely to churn (simple rule) (High fees + low deposits)
SELECT *
FROM CUSTOMER
WHERE fee_structure = 'High'
AND bank_deposits < 400000;


