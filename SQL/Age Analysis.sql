 CREATE TABLE mapping_AgeGrp (
    Age Varchar(10)
);


 INSERT INTO mapping_AgeGrp (Age)
SELECT Age FROM prod_Churn;

 SELECT * FROM mapping_AgeGrp;


  ALTER TABLE mapping_AgeGrp ADD Age_Group varchar(10); 

 UPDATE mapping_AgeGrp  
SET Age_Group =  
    CASE  
        WHEN Age < 20 THEN '<20'  
        WHEN Age < 35 THEN '20-35'  
        WHEN Age < 50 THEN '35-50'  
        ELSE '>50'  
    END;



ALTER TABLE mapping_AgeGrp ADD Age_Group_Sorting varchar(10); 

SELECT * FROM mapping_AgeGrp; 


 UPDATE mapping_AgeGrp  
SET Age_Group_Sorting =  
    CASE  
        WHEN Age_Group = '<20' THEN '1'  
        WHEN Age_Group = '20-35' THEN '2'  
        WHEN Age_Group = '35-50' THEN '3'  
        ELSE '4'  
    END; 