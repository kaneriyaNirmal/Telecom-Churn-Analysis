/* Data Exploration Check Distinct Values */


 SELECT Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 1.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Gender;


SELECT Contract, 
	Count(Contract) as TotalCount,
	Count(Contract) *  1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Contract; 


 SELECT 
    Customer_Status, 
    COUNT(Customer_Status) AS TotalCount, 
    SUM(TRY_CAST(Total_Revenue AS FLOAT)) AS TotalRev,
    SUM(TRY_CAST(Total_Revenue AS FLOAT)) * 100.0 / 
    (SELECT SUM(TRY_CAST(Total_Revenue AS FLOAT)) FROM stg_Churn) AS RevPercentage
FROM stg_Churn
GROUP BY Customer_Status;



 SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc 




select distinct Internet_Type
from prod_Churn






