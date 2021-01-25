-- create database Bank;
-- use Bank;
  
  CREATE TABLE LOAN (
  customer_id VARCHAR(15) NOT NULL,
  branch_id VARCHAR(6) NOT NULL,
  loan_amount INT NOT NULL,
  CONSTRAINT customer_id PRIMARY KEY (customer_id)
);

CREATE TABLE BRANCH (
branch_id VARCHAR(6) NOT NULL,
branchname VARCHAR(30) NOT NULL,
branchcity VARCHAR(30) NOT NULL,
 CONSTRAINT branch_id PRIMARY KEY (branch_id)
);

CREATE TABLE CUSTOMER (
customer_id VARCHAR(15) NOT NULL,
firstname VARCHAR(30) NOT NULL,
middlename VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
city VARCHAR(15) NOT NULL,
mobilenumber VARCHAR(11) NOT NULL,
occupation VARCHAR(20) NOT NULL,
dob DATE NOT NULL,
CONSTRAINT customer_id PRIMARY KEY(customer_id)
);

CREATE TABLE TRANSACTION_DETAILS (
transaction_number VARCHAR(6) NOT NULL,
date_of_transaction DATE NOT NULL,
medium_of_transaction VARCHAR(20) NOT NULL,
transaction_type VARCHAR(10) NOT NULL,
transaction_amount INTEGER NOT NULL,
account_number VARCHAR(10) NOT NULL,
CONSTRAINT transaction_number PRIMARY KEY(transaction_number),
CONSTRAINT account_number FOREIGN KEY(account_number) 
                          REFERENCES ACCOUNT(account_number)
);

CREATE TABLE ACCOUNT (
account_number VARCHAR(10) NOT NULL,
opening_balance INT NOT NULL,
aod DATE NOT NULL,
account_type VARCHAR(10) NOT NULL,
account_status VARCHAR(10) NOT NULL,
customer_id VARCHAR(15) NOT NULL,
branch_id VARCHAR(6) NOT NULL,
CONSTRAINT account_number PRIMARY KEY(account_number),
CONSTRAINT customer_id FOREIGN KEY(customer_id) 
                       REFERENCES CUSTOMER(customer_id),
CONSTRAINT branch_id FOREIGN KEY(branch_id) 
                       REFERENCES BRANCH(branch_id)
);

INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL234', '327, Herbert Macaulay', 'Sabo');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL235', '123, Enitan Street', 'Surulere');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL236', 'Unilag Branch', 'Akoka');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL237', 'Ikorodu Road Branch', 'Ikorodu');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL238', '325 Admiralty way', 'VI');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL239', 'Tujuosho Market', 'Yaba');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL240', '23, Iwaya Rd', 'Mainland');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL241', '213, Acme Rd', 'Ikeja');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL242', '87, Sangotedo', 'Sangotedo');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL243', 'Lagos-Ibadan Express Rd', 'Shagamu');
INSERT INTO BRANCH(branch_id, branchname, branchcity)VALUES
( 'ACL244', '109, King Olumba Ozuma Rd', 'Awka');

INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
( 'Tboy96', 'Toyin', 'Michael', 'Onagoruwa', 'Sabo', '09043910175', 'Software engineer', '1996/03/13');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
( 'RelaxedGun01', 'Olaunle', 'Gabriel', 'Onafowora', 'Yaba', '08123856279', 'Carpenter', '1971/12/21');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
('JohnnyBobo01', 'John', 'Jameson', 'Abel', 'VI', '08017512953', 'UI/UX Engineer', '1987/01/24');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
('Chika51', 'Chikamara', 'Ebube', 'Okoro', 'Surulere', '09041739267', 'Hairdresser', '1991/09/27');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
('Abdul1002', 'Abdullahi', 'Abdulkadir', 'Hassan', 'Sabo', '09026382745', 'Bureau De Change', '1965/05/16');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
('Ebuksboy01', 'Chukwuebuka', 'Nonso', 'Chidozie', 'Surulere', '07023749615', 'Accountant', '1982/08/01');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
('DaddyYo', 'Chima', 'Dave', 'Davidson', 'Uyo', '09028761846', 'Trader', '1989/11/09');
INSERT INTO CUSTOMER(customer_id, firstname, middlename, lastname, city, mobilenumber, occupation, dob)VALUES
('Queenuju87', 'Ujunwa', 'Obianghelli', 'Atanpako', 'Owerri', '08028641984', 'Lawyer', '1987/02/19');

INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('Seun91', 'ACL237', '120000');
INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('DannyBoy12', 'ACL238', '5200000');
INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('RealJamesDele1', 'ACL235', '8720450');
INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('BalaSadiq1004', 'ACL234', '1285105');
INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('SammyUkwoq', 'ACL239', '1500000');
INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('JohnDoe', 'ACL236', '55000');
INSERT INTO LOAN(customer_id, branch_id, loan_amount)VALUES    
('Tboy98', 'ACL237', '1260890');

INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('1002137325', '5000', '2019/02/17', 'Savings', 'Open', 'Tboy96', 'ACL239');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('1002132638', '150000', '2015/04/22', 'Current', 'Open', 'RelaxedGun01', 'ACL238');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('0092192538', '17000', '2014/09/29', 'Savings', 'Closed', 'Chika51', 'ACL237');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('1010472494', '88600', '2016/10/27', 'Savings', 'Open', 'JohnnyBobo01', 'ACL239');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('1009227810', '21900', '2015/07/13', 'Current', 'Dormant', 'Abdul1002', 'ACL239');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('1012812385', '1000', '2018/05/23', 'Savings', 'Open', 'Ebuksboy01', 'ACL240');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('1001848705', '230000', '2011/09/03', 'Savings', 'Open', 'DaddyYo', 'ACL242');
INSERT INTO ACCOUNT(account_number, opening_balance, aod, account_type, account_status, customer_id, branch_id)VALUES
('0983961962', '190500', '2019/11/23', 'Savings', 'Open', 'Queenuju87', 'ACL243');

INSERT INTO TRANSACTION_DETAILS VALUES('100123', '2020/12/23', 'POS', 'Credit', '230000', '0983961962');
INSERT INTO TRANSACTION_DETAILS VALUES('101274', '2019/01/13', 'Mobile App', 'Debit', '15950', '1001848705');
INSERT INTO TRANSACTION_DETAILS VALUES('213853', '2020/09/17', 'Bank Teller', 'Debit', '12500', '1010472494');
INSERT INTO TRANSACTION_DETAILS VALUES('138518', '2021/01/12', 'POS', 'Debit', '7500', '1002137325');
INSERT INTO TRANSACTION_DETAILS VALUES('168295', '2020/11/03', 'Mobile App', 'Debit', '5000', '0092192538');