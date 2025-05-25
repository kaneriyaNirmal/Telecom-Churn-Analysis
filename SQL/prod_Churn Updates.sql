 Add New Columns


 ALTER TABLE prod_Churn  
ADD Customer_Status_Values VARCHAR(50);  

ALTER TABLE prod_Churn ALTER COLUMN Customer_Status_Values VARCHAR(50);


 UPDATE prod_Churn  
SET Customer_Status_Values =  
    CASE  
        WHEN Customer_Status = 'Churned' THEN '1'  
        ELSE '0' 
		
    END; 

 select * from prod_Churn 


 ALTER TABLE prod_Churn ADD Monthly_Charge_Status VARCHAR(10);

 UPDATE prod_Churn  
SET Monthly_Charge_Status =  
    CASE  
        WHEN TRY_CONVERT(FLOAT, Monthly_Charge) < 20 THEN '<20'  
        WHEN TRY_CONVERT(FLOAT, Monthly_Charge) < 50 THEN '20-50'  
        WHEN TRY_CONVERT(FLOAT, Monthly_Charge) < 100 THEN '50-100'  
        ELSE '>100'  
    END;



SELECT Monthly_Charge, Monthly_Charge_Status FROM prod_Churn;  



