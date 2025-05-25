 CREATE TABLE mapping_TenureGrp (
    Tenure_in_Months Varchar(10)
);


 INSERT INTO mapping_TenureGrp (Tenure_in_Months)
SELECT Tenure_in_Months FROM prod_Churn;

 SELECT * FROM mapping_TenureGrp; 


 ALTER TABLE mapping_TenureGrp ADD Tenure_Group varchar(10);


  UPDATE mapping_TenureGrp  
SET Tenure_Group =  
    CASE  
        WHEN Tenure_in_Months < 6 THEN '<6 Months'  
        WHEN Tenure_in_Months < 12 THEN '6-12 Months'  
        WHEN Tenure_in_Months < 18 THEN '12-18 Months' 
		WHEN Tenure_in_Months < 24 THEN '18-24 Months'
        ELSE '>=24 Months'  
    END; 

ALTER TABLE mapping_TenureGrp  
ALTER COLUMN Tenure_Group VARCHAR(20);


 
 
 
ALTER TABLE mapping_TenureGrp ADD Tenure_Group_Sorting varchar(10);

  SELECT * FROM mapping_TenureGrp; 


 UPDATE mapping_TenureGrp  
SET Tenure_Group_Sorting =  
    CASE  
        WHEN Tenure_Group = '<6 Months' THEN '1'  
        WHEN Tenure_Group = '6-12 Months' THEN '2'  
        WHEN Tenure_Group = '12-18 Months' THEN '3' 
		WHEN Tenure_Group = '18-24 Months' THEN '4'
        ELSE '5'  
    END;