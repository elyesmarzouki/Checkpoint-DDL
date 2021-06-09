CREATE TABLE Product (
	Product_id VARCHAR2(20) CONSTRAINT <constraint_name> PRIMARY KEY,
	Product_Name VARCHAR2(20) CONSTRAINT <constraint_name> NOT NULL,
	Price NUMBER CONSTRAINT <constraint_name> CHECK (price>=0),
    ALTER TABLE Product ADD Category VARCHAR2(100);
);

CREATE TABLE Customer (
	Customer_id VARCHAR2(20) CONSTRAINT <constraint_name> PRIMARY KEY,
	Customer_Name VARCHAR2(20) CONSTRAINT <constraint_name> NOT NULL,
	Customer_Tel NUMBER
);

CREATE TABLE Orders (
	Customer_id VARCHAR2(20),
	Product_id VARCHAR2(20),
	Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT <constraint_name> FOREIGN KEY (Customer_id,Product_id) REFERENCES Orders (Customer_id,Product_id),
    ALTER TABLE Orders ADD OrderDate DATE CONSTRAINT <constraint_name> DEFAULT(SYSDATE)
);