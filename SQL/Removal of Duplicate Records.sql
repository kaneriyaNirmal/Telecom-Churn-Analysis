select * from prod_Churn


SELECT Customer_ID, COUNT(*) AS Occurrences
FROM prod_Churn
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

WITH DuplicateCTE AS (
    SELECT 
        Customer_ID,
        ROW_NUMBER() OVER (PARTITION BY Customer_ID ORDER BY (SELECT NULL)) AS rn
    FROM prod_Churn
)
DELETE FROM DuplicateCTE
WHERE rn > 1;

