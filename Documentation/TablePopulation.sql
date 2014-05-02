--creation scripts
INSERT INTO UNPREPARED_ITEM(CATEGORY_ID, ITEM_NAME, ITEM_PRICE)
VALUES	('CT000001','Ribeye',10.00),
		('CT000003','Potatoes',3.00),
		('CT000004','Coleslaw',4.00),
		('CT000003','Broccoli',2.00),
		('CT000002','Fried Chicken',5.00)

INSERT INTO SUPPLIERS
(SUPPLIER_NAME, SUPPLIER_PHONE, SUPPLIER_FAX, SUPPLIER_EMAIL,
SUPPLIER_STREET, SUPPLIER_SUITE_BOX_NO,supplier_city, SUPPLIER_STATE, SUPPLIER_ZIP)
VALUES	('fresh produce every day', '1800360000',null, 'fresh@email.com',
			'2100 main st','32','clarksville', 'tn', '37040'),
		('fresh meat every day', '(800)360-0000',null, 'fresh@email.com',
			'2200 main st','A','clarksville', 'tn', '37050'),
		('fresh bread every day', '(800)464-0000',null, 'fresh@email.com',
			'2300 main st','12','clarksville', 'tn', '37003'),
		('fresh vegies every day', '(800)110-4000',null, 'fresh@email.com',
			'2400 main st','B','clarksville', 'tn', '37100'),
		('fresh cheese every day', '(800)660-5000',null, 'fresh@email.com',
			'2500 main st','C','clarksville', 'tn', '37800')
			
INSERT INTO SPECIAL_SERVICES(SERVICE_NAME,SERVICE_PRICE)
VALUES	('Cake Cutting', 200),
		('Baked Alaska', 500),
		('DJ', 500),
		('Room Setup', 400),
		('After Event', 800)


INSERT into SALES_REP(REP_f_name, REP_l_name, REP_phone, REP_alt_phone, REP_email)
values
		('James', 'Johny', '(315)123-3125','(315)253-3625','jamesjohny@email.com'),
		('Mike', 'Tison', '(800)253-1526','(800)253-2255','miketison@email.com'),
		('Robert', 'Morales', '(415)336-8521','(415)855-3698','robertmorales@email.com'),
		('Sandy', 'Johns', '(789)456-1236','(789)258-9631','sandyjohns@email.com'),
		('Shilla', 'Johns', '(789)456-1236','(789)258-9631','sandyjohns@email.com')

INSERT INTO JOBS(JOB_DESC, JOB_PAY_RATE)
VALUES	('Wait Staff', 10.50),
		('Food Prep', 10.50),
		('Cook', 12.00),
		('Delivery', 10.50),
		('Cashier', 7.50)
		
INSERT INTO EVENTS(EVENT_NAME, EVENT_LOCATION, EVENT_DATE)
VALUES	('Wedding', 'Opry Mills Mall','05/06/2014'),
		('Birthday', 'Las Vegas','07/06/2014'),
		('Graduation', 'Fair Grounds','12/06/2014'),
		('Wedding', 'Holiday Inn','05/06/2014'),
		('Baby Shower', 'Customer Home','05/06/2014')
		
INSERT into employees(emp_ssn, EMP_f_name, EMP_l_name, EMP_phone, EMP_alt_phone, emp_hire_date, emp_end_date,emp_pass,emp_manager_y_n)
values	('111-22-2333','Linus', 'Torvalds', '(615)111-2525','(615)123-4567','02/03/2013',NULL,'ltorvalds','1'),
		('444-22-5555','Bill', 'Gates', '(555)222-8888','(555)444-8888','01/03/2013',NULL,'bgates','0'),
		('333-55-7777','Steve', 'Wozniak', '(284)555-1258','(284)175-8551','09/03/2014',NULL,'thewoz','0'),
		('444-99-0000','Richard', 'Stallman', '(142)555-3698','(615)123-4567','07/03/2002',NULL,'rstallman','1'),
		('101-22-2111','Eric', 'Raymond', '(615)111-2525','(615)123-4567','07/03/2011',NULL,'eraymond','1')

INSERT into CUSTOMERS(CUST_f_name, CUST_l_name, CUST_phone, CUST_alt_phone, CUST_email)
values	('James', 'Blunt', '(315)123-3125','(315)253-3625','jblunt@email.com'),
		('Mike', 'Tyson', '(800)253-1526','(800)253-2255','mktyson@email.com'),
		('Robert', 'Morales', '(415)336-8521','(415)855-3698','robertmorales@email.com'),
		('Sandy', 'Johns', '(789)456-1236','(789)258-9631','sandyjohns@email.com'),
		('Martha', 'Stewart', '(444)555-1414','(444)666-1600','martha.stewart@email.com')

INSERT into Category(Cateory)
values	('Meat'),
		('Poultry'),
		('Fresh Produce'),
		('Prepared Salads'),
		('Snacks')
		
INSERT INTO SIDES(UNPREPARED_ITEM_ID)
VALUES	('UP000002'),
		('UP000003'),
		('UP000004'),
		('UP000005'),
		('UP000006')

INSERT INTO PURCHASE_ORDERS(REP_ID, SUPPLIER_ID, ORDER_DATE)
VALUES	('RP000001','SU000001','02/25/2013'),
		('RP000002','SU000002','03/25/2013'),
		('RP000001','SU000001','04/25/2013'),
		('RP000004','SU000004','05/25/2013'),
		('RP000005','SU000005','06/25/2013')

INSERT INTO PO_DETAILS(PURCHASE_ORDER_ID, UNPREPARED_ITEM_ID, QUANTITY)
VALUES 	('PO000001','UP000002',25),
		('PO000002','UP000003',45),
		('PO000003','UP000004',35),
		('PO000004','UP000005',125),
		('PO000005','UP000006',225)

INSERT INTO PAY_SCHEDULE(EMP_ID, JOB_ID, HOURS_WORKED)
VALUES	('EM000001','JB000001',50),
		('EM000002','JB000002',40),
		('EM000003','JB000003',55),
		('EM000004','JB000004',60),
		('EM000005','JB000005',45)

INSERT INTO MEAL_DETAIL(ENTREE_ID, SIDE_ONE, SIDE_TWO)
VALUES 	('EN000001','SI000001','SI000005'),
		('EN000002','SI000002','SI000004'),
		('EN000003','SI000003','SI000003'),
		('EN000004','SI000004','SI000002'),
		('EN000005','SI000005','SI000001')

INSERT INTO EVENT_MEAL(MEAL_ID, EVENT_ID, PRICE_PER_MEAL)
VALUES	('MD000001','EV000001',35.00),
		('MD000002','EV000002',15.15),
		('MD000003','EV000003',5.50),
		('MD000004','EV000004',12.10),
		('MD000005','EV000005',11.11)

INSERT INTO Entrees(Unprepared_Item_ID)
values	('UP000002'),
		('UP000003'),
		('UP000004'),
		('UP000005'),
		('UP000006')

INSERT into Employee_Address(EMP_ID, Street, Apt_Suite_Box_NO ,City, State, Zip)
values	('EM000001', '1236 road st.', '23', 'springfield', 'tn', '37172'),
		('EM000002', '4569 MEMORIAL BLVD', '5', 'CLARKSVILLE', 'tn', '55214'),
		('EM000003', '789 ROSE RD.', '12', 'NASHVILLE', 'tn', '37048'),
		('EM000004', '369 APPLE ST.', '3600', 'HUPKINSVILLE', 'KY', '34014'),
		('EM000005', '789 STONE DR.', '125', 'springfield', 'tn', '37172')

INSERT into Billing_Address(Customer_ID, Street, Apt_Suite_Box_NO ,City, State, Zip)
values	('CU000001', '2323 road st.', '23', 'springfield', 'tn', '37172'),
		('CU000002', '2300 MEMORIAL BLVD', '5', 'CLARKSVILLE', 'tn', '55214'),
		('CU000003', '7800 ROSE RD.', '12', 'NASHVILLE', 'tn', '37048'),
		('CU000004', '3600 APPLE ST.', '3600', 'HUPKINSVILLE', 'KY', '34014'),
		('CU000005', '1250 STONE DR.', '125', 'springfield', 'tn', '37172')

INSERT INTO EVENT_SERVICES(EVENT_ID, SERVICEs_ID)
VALUES 	('EV000001','SR000001'),
		('EV000002','SR000002'),
		('EV000003','SR000003'),
		('EV000004','SR000004'),
		('EV000005','SR000005')

INSERT INTO EVENT_STAFF(EMP_ID, EVENT_ID, JOB_ID)
VALUES	('EM00001','EV000001','JB000001'),
		('EM00002','EV000002','JB000002'),
		('EM00003','EV000003','JB000003'),
		('EM00004','EV000004','JB000004'),
		('EM00005','EV000005','JB000005')

INSERT INTO 
INVENTORY(UNPREPARED_ITEM_ID, QOH, MIN_AMT, MAX_AMT, PROCESS_DATE, Expiry_DATE)
values	('UP000002',50,25,100,'02/03/2014','02/03/2015'),
		('UP000003',30,25,100,'02/03/2014','02/03/2015'),
		('UP000004',20,35,50,'02/03/2014','02/03/2015'),
		('UP000005',55,25,150,'02/03/2014','02/03/2015'),
		('UP000006',51,35,200,'02/03/2014','02/03/2015')

INSERT INTO MAILING_ADDRESS(Customer_ID, Street, Apt_Suite_Box_NO ,City, State, Zip,SAME_AS_BILLING_Y_N)
values	('CU000001', '12 road st.', '23', 'springfield', 'tn', '37172', 0),
		('CU000002', '2222 MEMORIAL BLVD', '5', 'CLARKSVILLE', 'tn', '55214', 0),
		('CU000003', '2588 ROSE RD.', '12', 'NASHVILLE', 'tn', '37048', 0),
		('CU000004', '0222 APPLE ST.', '3600', 'HUPKINSVILLE', 'KY', '34014', 0),
		('CU000005', '1250 STONE DR.', '125', 'springfield', 'tn', '37172', 1)

INSERT INTO CONTRACTS(EVENT_ID,CUSTOMER_ID)
VALUES 	('EV000001','CU000001'),
		('EV000002','CU000002'),
		('EV000003','CU000003'),
		('EV000004','CU000004'),
		('EV000005','CU000005')

INSERT INTO INVOICE(CONTRACT_ID, NUMBER_OF_MEALS)
VALUES	('CA000001',36),
		('CA000002',20),
		('CA000003',100),
		('CA000004',50),
		('CA000005',25)

INSERT into Acct_Receivable(Invoice_ID)
values	('IN000001'),
		('IN000002'),
		('IN000003'),
		('IN000004'),
		('IN000005')

INSERT into Acct_Rec_Detail(Acct_ID, Acct_Bal, Amt_Due,Date_Due)
values	('AC000001', 824.39, 100.00, '05/01/2014'),
		('AC000002', 1000.00, 250.00, '07/05/2015'),
		('AC000003', 3000.00, 1500.00, '08/04/2014'),
		('AC000004', 3150.00, 2650.00, '04/08/2016'),
		('AC000005', 2000.00, 280.00, '02/01/2015')

INSERT into Accounts_Payable(Purchase_Order_ID, Date_Due,Amount_Due)
values	('PO000001','01/03/2014',2500),
		('PO000002','05/03/2014',2000),
		('PO000003','08/03/2014',2900),
		('PO000004','03/03/2014',2100),
		('PO000005','11/03/2014',2800)

INSERT into contract_DETAILS(contract_ID, acct_ID, contract_date,deposit_amt,discount_percentage)
values	('CA000001', 'AC000001','02/01/2014', 500.00,0),
		('CA000002', 'AC000002','04/01/2014', 500.00,.50),
		('CA000003', 'AC000003','05/01/2014', 800.00,.10),
		('CA000004', 'AC000004','08/01/2014', 600.00,0),
		('CA000005', 'AC000005','09/01/2014', 900.00,0)

INSERT INTO LOST_DAMAGED_INVENTORY(INVENTORY_ID, QUANT_LOST)
VALUES 	('IV000002',25),
		('IV000003',25),
		('IV000004',12),
		('IV000005',5),
		('IV000006',50)

INSERT INTO LOST_DAMAGED_DETAILS(LOST_DAMAGED_ID, LOSS_OR_DAMAGE, NOTES)
VALUES	('LD000002',1,'this item came up missing'),
		('LD000003',0,'this item was damaged'),
		('LD000004',0,'this item was damaged'),
		('LD000005',1,'this item came up missing'),
		('LD000006',1,'this item came up missing')

