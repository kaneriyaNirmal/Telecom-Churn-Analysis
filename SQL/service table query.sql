SELECT * INTO Services_Data FROM prod_churn;

select * from Services_Data

select * from prod_Churn

SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    Value_Deal,
    Internet_Type,
    Contract,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    Churn_Category,
    Churn_Reason,
    Customer_Status_Values,
    Monthly_Charge_Status,
    Service_Type,  
    Service_Status 
FROM 
    (SELECT * FROM Services_Data) AS src
UNPIVOT 
    (Service_Status FOR Service_Type IN (
        Phone_Service, Multiple_Lines, Internet_Service, Online_Security, 
        Online_Backup, Device_Protection_Plan, Premium_Support, 
        Streaming_TV, Streaming_Music, Unlimited_Data, Paperless_Billing, Streaming_Movies
    )) AS unpvt;
	*/

	CREATE TABLE Services_Data_Unpivoted (
    Customer_ID NVARCHAR(50),
    Gender VARCHAR(50),
    Age INT,
    Married VARCHAR(50),
    State VARCHAR(50),
    Number_of_Referrals INT,
    Tenure_in_Months INT,
    Value_Deal VARCHAR(50),
    Internet_Type VARCHAR(50),
    Contract VARCHAR(50),
    Payment_Method VARCHAR(50),
    Monthly_Charge DECIMAL(10,2),
    Total_Charges DECIMAL(10,2),
    Total_Refunds DECIMAL(10,2),
    Total_Long_Distance_Charges DECIMAL(10,2),
    Total_Revenue DECIMAL(10,2),
    Customer_Status VARCHAR(50),
    Churn_Category VARCHAR(50),
    Churn_Reason VARCHAR(255),
    Customer_Status_Values VARCHAR(50),
    Monthly_Charge_Status VARCHAR(50),
    Service_Type VARCHAR(50), 
    Service_Status VARCHAR(50) 
);


INSERT INTO Services_Data_Unpivoted
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    Value_Deal,
    Internet_Type,
    Contract,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    Churn_Category,
    Churn_Reason,
    Customer_Status_Values,
    Monthly_Charge_Status,
    Service_Type,
    Service_Status
FROM 
    (SELECT * FROM Services_Data) AS src
UNPIVOT 
    (Service_Status FOR Service_Type IN (
        Phone_Service, Multiple_Lines, Internet_Service, Online_Security, 
        Online_Backup, Device_Protection_Plan, Premium_Support, 
        Streaming_TV, Streaming_Music, Unlimited_Data, Paperless_Billing, Streaming_Movies
    )) AS unpvt;
*/


select * from Services_Data_Unpivoted

 select * from prod_Churn