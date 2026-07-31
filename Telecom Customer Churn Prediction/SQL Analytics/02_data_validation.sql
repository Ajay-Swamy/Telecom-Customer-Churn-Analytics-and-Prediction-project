-- Total Records
select count(*) as Total_customers from telecom.telecom_churn;

-- Checking for Duplicate Customer IDs
select customerID, 
		count(*) 
from telecom.telecom_churn
group by customerID
having count(*)>1;

-- Check Missing TotalCharges
select count(*) as BlankTotalCharges
from telecom.telecom_churn
where trim(TotalCharges)='';


-- Distinct Values in Churn
select distinct(churn) 
from telecom.telecom_churn;

-- Distinct Contract Types
select distinct(Contract)
from telecom.telecom_churn;

-- Distinct Internet Service
select distinct(InternetService)
from telecom.telecom_churn;

--Distinct Payment Methods
select distinct(PaymentMethod)
from telecom.telecom_churn;

-- Monthly Charges Summary
select 
	min(MonthlyCharges) as Minimum,
	max(MonthlyCharges) as Maximum,
	avg(MonthlyCharges) as Average
from telecom.telecom_churn;

-- Tenure Summary
select
    min(tenure),
    max(tenure),
    avg(tenure)
from telecom.telecom_churn;

-- Observing NULL values in Total Charges
SELECT COUNT(*) AS null_totalcharges
FROM telecom.telecom_churn
WHERE TotalCharges IS NULL;

SELECT customerID,
       tenure,
       MonthlyCharges,
       TotalCharges
FROM telecom.telecom_churn
WHERE tenure = 0;













