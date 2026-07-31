select version()

CREATE SCHEMA telecom;

CREATE TABLE telecom.telecom_churn (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INTEGER,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INTEGER,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(25),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(25),
    OnlineBackup VARCHAR(25),
    DeviceProtection VARCHAR(25),
    TechSupport VARCHAR(25),
    StreamingTV VARCHAR(25),
    StreamingMovies VARCHAR(25),
    Contract VARCHAR(25),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges NUMERIC(10,2),
    TotalCharges VARCHAR(20),
    Churn VARCHAR(5)
);



SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'telecom'
AND table_name = 'telecom_churn';




select * from telecom_c

