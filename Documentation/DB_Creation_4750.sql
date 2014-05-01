--Group 3 PrimeTime Catering Table Creation Script
--C. Edwards, C. Gooch, D. Moats, J. Northern, M. Saleh

--create database PrimeTimeCatering;

use PrimeTimeCatering;

create table Events(
	Event_ID 		
	AS CAST('Ev'+RIGHT('000000'+CAST(RowNum_EV AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Event_Name 		varchar(50) 	   			not null,
	Event_Location 	varchar(50) 	   			not null,
	Event_Date 		date 				   		not null,
	RowNum_EV INT IDENTITY(1,1) CHECK (RowNum_EV <= 999))
	
create table Special_Services(
	Service_ID		
	AS CAST('SR'+RIGHT('000000'+CAST(RowNum_SR AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Service_Name	varchar(50)				not null,
	Service_Price	decimal(5,2)			not null,
	RowNum_SR INT IDENTITY(1,1) CHECK (RowNum_SR <= 999))

create table Event_Services(
	Event_ID		varchar(8)	not null,
	Services_ID		varchar(8)	not null,
	PRIMARY KEY(Event_ID, Services_ID))
	
create table Customers(
	Customer_ID
	AS CAST('CU'+RIGHT('000000'+CAST(RowNum_CU AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Cust_F_Name		varchar(25)				not null,
	Cust_L_Name		varchar(25) 			not null,
	Cust_Phone		varchar(13) 			not null,
	Cust_Alt_Phone 	varchar(13)						,
	Cust_Email		varchar(50)				not null,
	RowNum_CU INT IDENTITY(1,1) CHECK (RowNum_CU <= 999))

create table Mailing_Address(
	Customer_ID 		varchar(8) PRIMARY KEY 	not null,
	Street				varchar(30)						,
	Apt_Suite_Box_No	varchar(10) 			not null,
	City				varchar(40)				not null,
	State				varchar(2)				not null,
	Zip					varchar(5)				not null,
	Same_As_Billing_Y_N	bit						not null)

create table Billing_Address(
	Customer_ID 		varchar(8) PRIMARY KEY not null,
	Street				varchar(30)					   ,
	Apt_Suite_Box_No	varchar(10) 			not null,
	City				varchar(40)				not null,
	State				varchar(2)				not null,
	Zip					varchar(5)				not null)
	
create table Contracts(
	Contract_ID 	
	AS CAST('CA'+RIGHT('000000'+CAST(RowNum_CA AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Event_ID 		varchar(8) REFERENCES Events(Event_ID) 		 not null,
	Customer_ID		varchar(8) REFERENCES Customers(Customer_ID) not null,
	RowNum_CA INT IDENTITY(1,1) CHECK (RowNum_CA <= 999))
	
create table Employees(
	Emp_ID			
	AS CAST('EM'+RIGHT('000000'+CAST(RowNum_EM AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Emp_SSN			varchar(11)	UNIQUE	not null,
	Emp_F_Name		varchar(25)	not null,
	Emp_L_Name		varchar(25) not null,
	Emp_Phone		varchar(13) not null,
	Emp_Alt_Phone	varchar(13) not null,
	Emp_Hire_Date	date		not null,
	Emp_End_Date	date,
	Emp_Pass		varchar(15)	not null,
	Emp_Manager_Y_N	bit			not null,
	RowNum_EM INT IDENTITY(1,1) CHECK (RowNum_EM <= 999))

create table Employee_Address(
	Emp_ID				varchar(8)	PRIMARY KEY not null,
	Street				varchar(30),
	Apt_Suite_Box_No	varchar(10) not null,
	City				varchar(40) not null,
	State				varchar(2)	not null,
	Zip					varchar(5)	not null)

create table Jobs(
	Job_ID			
	AS CAST('JB'+RIGHT('000000'+CAST(RowNum_JB AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Job_Desc		varchar(50)		not null,
	Job_Pay_Rate	decimal(5,2) 	not null,
	RowNum_JB INT IDENTITY(1,1) CHECK (RowNum_JB <= 999))

create table Pay_Schedule(
	Emp_ID			varchar(8) 		not null,
	Job_ID			varchar(8) 		not null,
	Hours_Worked	decimal(4,2) 	not null,
	PRIMARY KEY(Emp_ID, Job_ID))
	
create table Event_Staff(
	Emp_ID		varchar(8)	not null,
	Event_ID	varchar(8)	not null,
	Job_ID		varchar(8)	not null,
	PRIMARY KEY(Emp_ID, Event_ID, Job_ID))

create table Category(
	Category_ID		
	AS CAST('CT'+RIGHT('000000'+CAST(RowNum_CT AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Cateory			varchar(40)	not null,
	RowNum_CT INT IDENTITY(1,1) CHECK (RowNum_CT <= 999))

create table Unprepared_Item(
	Unprepared_Item_ID	
	AS CAST('UP'+RIGHT('000000'+CAST(RowNum_UP AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Category_ID			varchar(8)	REFERENCES Category(Category_ID) not null,
	Item_Name			varchar(50)		not null,
	Item_Price			decimal(5,2) 	not null,
	RowNum_UP INT IDENTITY(1,1) CHECK (RowNum_UP <= 999))
	
create table Inventory(
	Inventory_ID		
	AS CAST('IV'+RIGHT('000000'+CAST(RowNum_IN AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Unprepared_Item_ID	varchar(8)	REFERENCES	Unprepared_Item(Unprepared_Item_ID) not null,
	QOH					integer		not null,
	Min_Amt				integer		not null,
	Max_Amt				integer		not null,
	Process_Date		date		not null,
	Expiry_Date			date		not null,
	RowNum_IN INT IDENTITY(1,1) CHECK (RowNum_IN <= 999))
	
create table Lost_Damaged_Inventory(
	Lost_Damaged_ID	
	AS CAST('LD'+RIGHT('000000'+CAST(RowNum_LD AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Inventory_ID	varchar(8)	REFERENCES Inventory(Inventory_ID) not null,
	Quant_Lost		integer,
	RowNum_LD INT IDENTITY(1,1) CHECK (RowNum_LD <= 999))

create table Lost_Damaged_Details(
	Lost_Damaged_ID	varchar(8)	PRIMARY KEY	not null,
	Loss_OR_Damage	bit						not null,
	Notes			varchar(255)			 not null)
	
--create table Prepared_Items(
	--Prepared_Item_ID	
	--AS CAST('PI'+RIGHT('000000'+CAST(RowNum_PI AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	--Unprepared_Item_ID	varchar(8)		REFERENCES Unprepared_Item(Unprepared_Item_ID) not null,
	--Serving_Size		decimal(4,2)	not null,
	--RowNum_PI INT IDENTITY(1,1) CHECK (RowNum_PI <= 999))
	
create table Entrees(
	Entree_ID			
	AS CAST('EN'+RIGHT('000000'+CAST(RowNum_EN AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Unprepared_Item_ID	varchar(8)	REFERENCES Unprepared_Item(Unprepared_Item_ID),
	RowNum_EN INT IDENTITY(1,1) CHECK (RowNum_EN <= 999))

create table Sides(
	Side_ID				
	AS CAST('SI'+RIGHT('000000'+CAST(RowNum_SI AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Unprepared_Item_ID	varchar(8) REFERENCES Unprepared_Item(Unprepared_Item_ID),
	RowNum_SI INT IDENTITY(1,1) CHECK (RowNum_SI <= 999))

create table Meal_Detail(
	Meal_ID	
	AS CAST('MD'+RIGHT('000000'+CAST(RowNum_MD AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Entree_ID	varchar(8)	REFERENCES Entrees(Entree_ID) not null,
	Side_One	varchar(8)	REFERENCES Sides(Side_ID) not null,
	Side_Two	varchar(8)	REFERENCES Sides(Side_ID) not null,
	RowNum_MD INT IDENTITY(1,1) CHECK (RowNum_MD <= 999))

create table Event_Meal(
	Meal_ID 		varchar(8) 		not null,
	Event_ID 		varchar(8) 		not null,
	Price_Per_Meal	decimal(5,2)	not null,
	PRIMARY KEY(Meal_ID, Event_ID))
	
create table Invoice(
	Invoice_ID		
	AS CAST('IN'+RIGHT('000000'+CAST(RowNum_IN AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Contract_ID 	varchar(8)	REFERENCES Contracts(Contract_ID),
	Number_of_Meals	integer		not null,
	RowNum_IN INT IDENTITY(1,1) CHECK (RowNum_IN <= 999))
	
create table Acct_Receivable(
	Acct_ID		
	AS CAST('AC'+RIGHT('000000'+CAST(RowNum_AC AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Invoice_ID 	varchar(8) not null REFERENCES INVOICE(Invoice_ID),
	RowNum_AC INT IDENTITY(1,1) CHECK (RowNum_AC <= 999))

create table Acct_Rec_Detail(
	Acct_ID varchar(8) PRIMARY KEY not null,
	Acct_Bal 	decimal(8,2) 	not null,
	Amt_Due		decimal(8,2)	not null,
	Date_Due	date			not null)
	
create table Contract_Details(
	Contract_ID 		varchar(8) 		PRIMARY KEY not null,
	Acct_ID 			varchar(8) 		REFERENCES Acct_Receivable(Acct_ID) not null,
	Contract_Date 		date 			not null,
	Deposit_Amt			decimal(6, 2) 	not null,
	Discount_Percentage	decimal(3,3))
	
create table Cancellations(
	Cancellation_ID 	
	AS CAST('XX'+RIGHT('000000'+CAST(RowNum_XX AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Contract_ID 		varchar(8) 	REFERENCES Contracts(Contract_ID) not null,
	Cancellation_Date	date		not null,
	Refund_Y_N			bit			not null,
	RowNum_XX INT IDENTITY(1,1) CHECK (RowNum_XX <= 999))

create table Suppliers(
	Supplier_ID				
	AS CAST('SU'+RIGHT('000000'+CAST(RowNum_SU AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Supplier_Name			varchar(50)	not null,
	Supplier_Phone			varchar(13)	not null,
	Supplier_Fax			varchar(13),
	Supplier_Email			varchar(50)	not null,
	Supplier_Street			varchar(30)	not null,
	Supplier_Suite_Box_No	varchar(10),
	Supplier_City			varchar(40)	not null,
	Supplier_State			varchar(2)	not null,
	Supplier_Zip			varchar(5)	not null,
	RowNum_SU INT IDENTITY(1,1) CHECK (RowNum_SU <= 999))

create table Sales_Rep(
	Sales_Rep_ID	
	AS CAST('RP'+RIGHT('000000'+CAST(RowNum_RP AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Rep_F_Name		varchar(25)	not null,
	Rep_L_Name		varchar(25)	not null,
	Rep_Phone		varchar(13)	not null,
	Rep_Alt_Phone	varchar(13),
	Rep_Email		varchar(50)	not null,
	RowNum_RP INT IDENTITY(1,1) CHECK (RowNum_RP <= 999))

create table Purchase_Orders(
	Purchase_Order_ID	
	AS CAST('PO'+RIGHT('000000'+CAST(RowNum_PO AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Rep_ID				varchar(8)	REFERENCES Sales_Rep(Sales_Rep_ID)	not null,
	Supplier_ID			varchar(8)	REFERENCES Suppliers(Supplier_ID) not null,
	Order_Date			date		not null,
	RowNum_PO INT IDENTITY(1,1) CHECK (RowNum_PO <= 999))

create table PO_Details(
	Purchase_Order_ID	varchar(8)	not null,
	Unprepared_Item_ID	varchar(8)	not null,
	Quantity			integer		not null,
	PRIMARY KEY(Purchase_Order_ID, Unprepared_Item_ID))

create table Accounts_Payable(
	Acct_Pay_ID			
	AS CAST('AP'+RIGHT('000000'+CAST(RowNum_AP AS VARCHAR(6)),6) AS VARCHAR(8)) PERSISTED PRIMARY KEY NOT NULL,
	Purchase_Order_ID	varchar(8)		REFERENCES Purchase_Orders(Purchase_Order_ID) not null,
	Date_Due			date			not null,
	Amount_Due			decimal(8,2)	not null,
	RowNum_AP INT IDENTITY(1,1) CHECK (RowNum_AP <= 999))

CREATE TABLE Cancellation_Summary(
	Cancellation_ID		varchar(8)		NOT NULL,
	Refund_Amt			decimal(6,2)			,
	Cancellation_Date	date			NOT NULL,
	Event_ID			varchar(8)		NOT NULL,
	Event_Name			varchar(50)		NOT NULL,
	Contract_ID			varchar(8)		NOT NULL,
	Contract_Date		date			NOT NULL,
	Customer_ID			varchar(8)		NOT NULL,
	Cust_F_Name			varchar(25)		NOT NULL,
	Cust_L_Name			varchar(25)		NOT NULL,
	Invoice_ID			varchar(8)		NOT NULL,
	Acct_ID				varchar(8)		NOT NULL,
	FOREIGN KEY (Cancellation_ID)	REFERENCES Cancellations(Cancellation_ID),
	FOREIGN KEY (Event_ID)			REFERENCES Events(Event_ID),
	FOREIGN KEY (Contract_ID)		REFERENCES Contracts(Contract_ID),
	FOREIGN KEY (Customer_ID)		REFERENCES Customers(Customer_ID),
	FOREIGN KEY (Invoice_ID)		REFERENCES Invoice(Invoice_ID),
	FOREIGN KEY (Acct_ID)			REFERENCES Acct_Receivable(Acct_ID))