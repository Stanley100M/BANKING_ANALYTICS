--Customer Segmentation & Demographics
--Customer distribution by age group
SELECT 
    CASE 
        WHEN AGE < 25 THEN 'Under 25'
        WHEN AGE BETWEEN 25 AND 40 THEN '25–40'
        WHEN AGE BETWEEN 41 AND 60 THEN '41–60'
        ELSE '60+'
    END AS AGE_GROUP,
    COUNT(*) AS Total
FROM CUSTOMER
GROUP BY 
    CASE 
        WHEN AGE < 25 THEN 'Under 25'
        WHEN AGE BETWEEN 25 AND 40 THEN '25–40'
        WHEN AGE BETWEEN 41 AND 60 THEN '41–60'
        ELSE '60+'
    END;

--Segmentation of customers into income tiers (Low / Middle / High)
SELECT 
    CASE 
        WHEN Estimated_Income < 100000 THEN 'Low Income'
        WHEN Estimated_Income BETWEEN 100000 AND 250000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_bracket,
    COUNT(*)
FROM CUSTOMER
GROUP BY 
    CASE 
        WHEN Estimated_Income < 100000 THEN 'Low Income'
        WHEN Estimated_Income BETWEEN 100000 AND 250000 THEN 'Middle Income'
        ELSE 'High Income'
    END;
    
--Distribution of customers by location, nationality, and occupation

--Distribution by location
SELECT location_id, COUNT(*) AS customers_distribution
FROM CUSTOMER
GROUP BY location_id
ORDER BY customers_distribution DESC;

--Distribution by nationality
SELECT Nationality, COUNT (*) As Total_by_nationality
FROM CUSTOMER
GROUP BY Nationality;

--Total customeers by occupation
SELECT OCCUPATION, COUNT(*)  AS Total
FROM CUSTOMER
GROUP BY OCCUPATION
ORDER BY Total DESC;



































