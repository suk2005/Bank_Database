show databases;

create database BankingDB;

use BankingDB;

create table Customers(
CustomerID int primary key,
FirstName varchar(20),
LastName varchar(20),
Email varchar(50),
Phone varchar(15),
AccountCreationDate date);

desc Customers;

CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);

create table Transactions(
TransactionID int,
TransactionDate date,
Amount decimal(10,2),
TransactionType varchar(20));

	
CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);

alter table customers
add DateOfBirth date;

alter table customers
modify Phone varchar(20);

desc customers;

alter table accounts
add constraint cst_balance
check (Balance>=1000);

desc accounts;

alter table accounts
add primary key (AccountID);

desc accounts;

desc customers;

ALTER TABLE Customers
MODIFY FirstName VARCHAR(50) NOT NULL;

alter table accounts
add CustomerID int;

alter table accounts 
add constraint con_fk
foreign key(CustomerID)
references customers(CustomerID);

ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);

alter table Loans
add CustomerID int;

alter table Loans
add constraint cons_fk
foreign key(CustomerID)
references customers(CustomerID);

alter table branches
add primary key(BranchID);

alter table Accounts
add branchID int;



alter table Accounts
add constraint const_fk
foreign key(BranchID)
references branches(BranchID);

alter table transactions
add AccountID int;

alter table transactions
add constraint constr_fk
foreign key(AccountID)
references accounts(AccountID);

alter table transactions
drop foreign key constr_fk;

alter table transactions
add CustomerID int;

alter table transactions
add constraint constra_fk
foreign key(CustomerID)
references customers(CustomerID);





insert into customers
values (100, "Rahul", "Sharma", "rsharma@gmail.com","9878765676","2020-12-18","2020-10-16");

select firstname from customers;

select * from customers;

insert into customers values(101, "Manoj", "Patil", "mpatil@gmail.com", "9878675676", "2012-08-28","2010-04-14");

select * from customers
where CustomerID=101;

insert into customers values(102, "Raj", "mehta", "rmehta@gmail.com", "9878676589", "2026-12-29", "2013-08-19");

INSERT INTO customers VALUES(103, "Amit", "Sharma", "amit.sharma@gmail.com", "9876543210", "2026-11-15", "2015-03-10");

INSERT INTO customers VALUES(104, "Priya", "Patil", "priya.patil@gmail.com", "9876501234", "2026-10-20", "2016-07-25");

INSERT INTO customers VALUES(105, "Neha", "Joshi", "neha.joshi@gmail.com", "9876512345", "2026-09-18", "2014-05-12");

INSERT INTO customers VALUES(106, "Rahul", "Verma", "rahul.verma@gmail.com", "9876523456", "2026-08-22", "2017-09-30");

INSERT INTO customers VALUES(107, "Sneha", "Kulkarni", "sneha.k@gmail.com", "9876534567", "2026-07-14", "2018-01-18");

INSERT INTO customers VALUES(108, "Karan", "Singh", "karan.singh@gmail.com", "9876545678", "2026-06-28", "2019-11-05");

INSERT INTO customers VALUES(109, "Pooja", "Desai", "pooja.desai@gmail.com", "9876556789", "2026-05-16", "2020-04-21");

INSERT INTO customers VALUES(110, "Rohan", "Naik", "rohan.naik@gmail.com", "9876567890", "2026-04-30", "2013-12-11");

INSERT INTO customers VALUES(111, "Anjali", "Gupta", "anjali.gupta@gmail.com", "9876578901", "2026-03-25", "2021-08-14");

INSERT INTO customers VALUES(112, "Vikas", "Yadav", "vikas.yadav@gmail.com", "9876589012", "2026-02-17", "2016-10-09");

INSERT INTO customers VALUES(113, "Meera", "Nair", "meera.nair@gmail.com", "9876590123", "2026-01-08", "2015-06-27");

INSERT INTO customers VALUES(114, "Arjun", "Rao", "arjun.rao@gmail.com", "9876601234", "2025-12-19", "2018-02-15");

INSERT INTO customers VALUES(115, "Kavita", "Mishra", "kavita.mishra@gmail.com", "9876612345", "2025-11-11", "2022-07-03");

update customers
set lastname="singh"
where CustomerID=102;

select * from customers;


desc accounts;

INSERT INTO Accounts VALUES
(101, 'Savings', 25000.50),
(102, 'Current', 50000.00),
(103, 'Savings', 18000.75),
(104, 'Current', 72000.25),
(105, 'Savings', 9500.00),
(106, 'Current', 120000.00),
(107, 'Savings', 34000.80),
(108, 'Current', 89000.40),
(109, 'Savings', 15000.60),
(110, 'Current', 65000.90),
(111, 'Savings', 27500.30),
(112, 'Current', 45000.00),
(113, 'Savings', 102500.75);

desc branches;

INSERT INTO Branches
VALUES
(1, 'Mumbai Branch', 'Mumbai', '0221111111', 1001),
(2, 'Pune Branch', 'Pune', '0202222222', 1002),
(3, 'Nashik Branch', 'Nashik', '0253222222', 1003),
(4, 'Nagpur Branch', 'Nagpur', '0712333333', 1004),
(5, 'Thane Branch', 'Thane', '0224444444', 1005),
(6, 'Ratnagiri Branch', 'Ratnagiri', '0235252525', 1006),
(7, 'Kolhapur Branch', 'Kolhapur', '0231666666', 1007),
(8, 'Goa Branch', 'Panaji', '0832777777', 1008),
(9, 'Delhi Branch', 'New Delhi', '0118888888', 1009),
(10, 'Bengaluru Branch', 'Bengaluru', '0809999999', 1010),
(11, 'Hyderabad Branch', 'Hyderabad', '0401111222', 1011),
(12, 'Chennai Branch', 'Chennai', '0443333444', 1012),
(13, 'Ahmedabad Branch', 'Ahmedabad', '0795555666', 1013),
(14, 'Jaipur Branch', 'Jaipur', '0141777888', 1014),
(15, 'Indore Branch', 'Indore', '0731222333', 1015);

desc accounts;


desc customers;
select * from customers;

desc accounts;

INSERT INTO Accounts
VALUES
(1001, 'Savings', 25000.50, 101, 1),
(1002, 'Current', 50000.00, 102, 2),
(1003, 'Savings', 18000.75, 103, 3),
(1004, 'Current', 72000.25, 104, 4),
(1005, 'Savings', 9500.00, 105, 5),
(1006, 'Current', 120000.00, 106, 6),
(1007, 'Savings', 34000.80, 107, 7),
(1008, 'Current', 89000.40, 108, 8),
(1009, 'Savings', 15000.60, 109, 9),
(1010, 'Current', 65000.90, 110, 10),
(1011, 'Savings', 27500.30, 111, 11),
(1012, 'Current', 45000.00, 112, 12),
(1013, 'Savings', 102500.75, 113, 13),
(1014, 'Current', 38500.40, 114, 14),
(1015, 'Savings', 56000.25, 115, 15);


desc loans;

INSERT INTO Loans
VALUES
(201, 200000.00, 8.50, '2022-01-10', '2027-01-10', 101),
(202, 350000.00, 9.00, '2022-02-15', '2027-02-15', 102),
(203, 150000.00, 8.20, '2022-03-20', '2026-03-20', 103),
(204, 500000.00, 9.50, '2022-04-25', '2028-04-25', 104),
(205, 250000.00, 8.80, '2022-05-30', '2027-05-30', 105),
(206, 300000.00, 9.10, '2022-06-12', '2027-06-12', 106),
(207, 450000.00, 8.90, '2022-07-18', '2028-07-18', 107),
(208, 175000.00, 8.40, '2022-08-22', '2026-08-22', 108),
(209, 225000.00, 9.20, '2022-09-15', '2027-09-15', 109),
(210, 275000.00, 8.70, '2022-10-20', '2027-10-20', 110),
(211, 400000.00, 9.30, '2022-11-08', '2028-11-08', 111),
(212, 325000.00, 8.60, '2022-12-18', '2027-12-18', 112),
(213, 180000.00, 8.10, '2023-01-14', '2028-01-14', 113),
(214, 375000.00, 9.40, '2023-02-19', '2029-02-19', 114),
(215, 290000.00, 8.80, '2023-03-25', '2028-03-25', 115);

desc transactions;

INSERT INTO Transactions
VALUES
(301, '2024-01-05', 5000.00, 'Deposit', 1001, 101),
(302, '2024-01-08', 2500.00, 'Withdrawal', 1002, 102),
(303, '2024-01-12', 7000.00, 'Deposit', 1003, 103),
(304, '2024-01-15', 1500.00, 'Withdrawal', 1004, 104),
(305, '2024-01-18', 9000.00, 'Deposit', 1005, 105),
(306, '2024-01-21', 3200.00, 'Withdrawal', 1006, 106),
(307, '2024-01-24', 6500.00, 'Deposit', 1007, 107),
(308, '2024-01-27', 2800.00, 'Withdrawal', 1008, 108),
(309, '2024-01-30', 8400.00, 'Deposit', 1009, 109),
(310, '2024-02-02', 2300.00, 'Withdrawal', 1010, 110),
(311, '2024-02-05', 7500.00, 'Deposit', 1011, 111),
(312, '2024-02-08', 3600.00, 'Withdrawal', 1012, 112),
(313, '2024-02-11', 9800.00, 'Deposit', 1013, 113),
(314, '2024-02-14', 4100.00, 'Withdrawal', 1014, 114),
(315, '2024-02-17', 11000.00, 'Deposit', 1015, 115);

select * from customers;

select * from branches;

select * from accounts;

select * from loans;

select * from transactions;

INSERT INTO Customers VALUES
(116,'Sanjay','Patel','sanjay.patel@gmail.com','9876623456','2025-10-05','2014-09-18'),
(117,'Ritika','Shah','ritika.shah@gmail.com','9876634567','2025-09-28','2015-02-22'),
(118,'Akash','Jadhav','akash.jadhav@gmail.com','9876645678','2025-09-15','2013-07-14'),
(119,'Nikita','More','nikita.more@gmail.com','9876656789','2025-08-30','2016-11-03'),
(120,'Suresh','Pawar','suresh.pawar@gmail.com','9876667890','2025-08-18','2012-04-09'),
(121,'Deepa','Patil','deepa.patil@gmail.com','9876678901','2025-08-05','2017-05-27'),
(122,'Rakesh','Kadam','rakesh.kadam@gmail.com','9876689012','2025-07-22','2015-12-11'),
(123,'Swati','Naik','swati.naik@gmail.com','9876690123','2025-07-10','2018-03-19'),
(124,'Ajay','Chavan','ajay.chavan@gmail.com','9876701234','2025-06-29','2013-08-08'),
(125,'Pallavi','Sawant','pallavi.sawant@gmail.com','9876712345','2025-06-15','2016-09-13'),
(126,'Nilesh','Bhosale','nilesh.bhosale@gmail.com','9876723456','2025-06-02','2014-01-25'),
(127,'Komal','Shinde','komal.shinde@gmail.com','9876734567','2025-05-21','2019-06-30'),
(128,'Vivek','Kulkarni','vivek.kulkarni@gmail.com','9876745678','2025-05-08','2017-02-16'),
(129,'Snehal','Deshmukh','snehal.deshmukh@gmail.com','9876756789','2025-04-25','2015-10-04'),
(130,'Mahesh','Joshi','mahesh.joshi@gmail.com','9876767890','2025-04-10','2013-12-28'),
(131,'Anita','Patwardhan','anita.patwardhan@gmail.com','9876778901','2025-03-29','2016-08-15'),
(132,'Prashant','Gawade','prashant.gawade@gmail.com','9876789012','2025-03-14','2018-01-09'),
(133,'Bhavana','Rane','bhavana.rane@gmail.com','9876790123','2025-03-01','2014-11-20'),
(134,'Kishor','Salvi','kishor.salvi@gmail.com','9876801234','2025-02-18','2015-05-17'),
(135,'Priti','Mhatre','priti.mhatre@gmail.com','9876812345','2025-02-05','2017-09-24'),
(136,'Ganesh','Shetty','ganesh.shetty@gmail.com','9876823456','2025-01-22','2013-06-06'),
(137,'Rekha','Gaikwad','rekha.gaikwad@gmail.com','9876834567','2025-01-09','2016-04-18'),
(138,'Sameer','Bane','sameer.bane@gmail.com','9876845678','2024-12-28','2018-10-29'),
(139,'Madhuri','Parab','madhuri.parab@gmail.com','9876856789','2024-12-14','2015-03-07'),
(140,'Tushar','Mane','tushar.mane@gmail.com','9876867890','2024-11-30','2014-07-12'),
(141,'Varsha','Joshi','varsha.joshi@gmail.com','9876878901','2024-11-18','2017-01-21'),
(142,'Hemant','Yadav','hemant.yadav@gmail.com','9876889012','2024-11-05','2016-05-11'),
(143,'Shweta','Raut','shweta.raut@gmail.com','9876890123','2024-10-21','2013-09-09'),
(144,'Dinesh','Kale','dinesh.kale@gmail.com','9876901234','2024-10-08','2015-02-27'),
(145,'Aarti','Gore','aarti.gore@gmail.com','9876912345','2024-09-25','2018-06-01'),
(146,'Yogesh','Jain','yogesh.jain@gmail.com','9876923456','2024-09-12','2014-12-05'),
(147,'Monika','Tiwari','monika.tiwari@gmail.com','9876934567','2024-08-30','2016-10-16'),
(148,'Harish','Dubey','harish.dubey@gmail.com','9876945678','2024-08-15','2017-08-08'),
(149,'Seema','Pandey','seema.pandey@gmail.com','9876956789','2024-08-01','2015-01-13'),
(150,'Rohit','Thakur','rohit.thakur@gmail.com','9876967890','2024-07-18','2013-11-26');



INSERT INTO Accounts VALUES
(1016,'Savings',48500.75,116,1),
(1017,'Current',72000.50,117,2),
(1018,'Savings',15300.25,118,3),
(1019,'Current',91000.80,119,4),
(1020,'Savings',26500.60,120,5),
(1021,'Current',54000.40,121,6),
(1022,'Savings',33800.90,122,7),
(1023,'Current',87500.10,123,8),
(1024,'Savings',19400.30,124,9),
(1025,'Current',68200.75,125,10),
(1026,'Savings',41250.50,126,11),
(1027,'Current',99300.20,127,12),
(1028,'Savings',22800.00,128,13),
(1029,'Current',76500.95,129,14),
(1030,'Savings',35100.45,130,15),
(1031,'Current',82400.60,131,1),
(1032,'Savings',27800.25,132,2),
(1033,'Current',63800.80,133,3),
(1034,'Savings',45900.10,134,4),
(1035,'Current',102000.50,135,5),
(1036,'Savings',18600.90,136,6),
(1037,'Current',57400.75,137,7),
(1038,'Savings',39700.20,138,8),
(1039,'Current',88900.40,139,9),
(1040,'Savings',24100.60,140,10),
(1041,'Current',71800.35,141,11),
(1042,'Savings',53200.80,142,12),
(1043,'Current',96400.15,143,13),
(1044,'Savings',30900.55,144,14),
(1045,'Current',84500.25,145,15),
(1046,'Savings',42750.90,146,1),
(1047,'Current',69000.30,147,2),
(1048,'Savings',21400.75,148,3),
(1049,'Current',93500.45,149,4),
(1050,'Savings',57600.65,150,5);


INSERT INTO Loans VALUES
(216,210000.00,8.40,'2023-04-10','2028-04-10',116),
(217,325000.00,8.90,'2023-04-18','2028-04-18',117),
(218,185000.00,8.20,'2023-05-02','2027-05-02',118),
(219,450000.00,9.30,'2023-05-15','2029-05-15',119),
(220,275000.00,8.70,'2023-05-28','2028-05-28',120),
(221,390000.00,9.10,'2023-06-08','2028-06-08',121),
(222,165000.00,8.00,'2023-06-20','2027-06-20',122),
(223,520000.00,9.50,'2023-07-04','2029-07-04',123),
(224,240000.00,8.60,'2023-07-16','2028-07-16',124),
(225,310000.00,8.80,'2023-07-29','2028-07-29',125),
(226,195000.00,8.30,'2023-08-11','2027-08-11',126),
(227,470000.00,9.20,'2023-08-24','2029-08-24',127),
(228,255000.00,8.50,'2023-09-05','2028-09-05',128),
(229,340000.00,9.00,'2023-09-18','2028-09-18',129),
(230,220000.00,8.40,'2023-10-01','2028-10-01',130),
(231,410000.00,9.10,'2023-10-14','2029-10-14',131),
(232,175000.00,8.10,'2023-10-27','2027-10-27',132),
(233,360000.00,8.90,'2023-11-09','2028-11-09',133),
(234,285000.00,8.70,'2023-11-22','2028-11-22',134),
(235,495000.00,9.40,'2023-12-05','2029-12-05',135),
(236,205000.00,8.20,'2023-12-18','2028-12-18',136),
(237,375000.00,9.00,'2024-01-03','2029-01-03',137),
(238,260000.00,8.60,'2024-01-16','2029-01-16',138),
(239,330000.00,8.80,'2024-01-29','2029-01-29',139),
(240,215000.00,8.30,'2024-02-10','2028-02-10',140),
(241,445000.00,9.20,'2024-02-23','2029-02-23',141),
(242,190000.00,8.10,'2024-03-07','2028-03-07',142),
(243,355000.00,8.90,'2024-03-20','2029-03-20',143),
(244,280000.00,8.70,'2024-04-02','2029-04-02',144),
(245,510000.00,9.50,'2024-04-15','2029-04-15',145),
(246,230000.00,8.40,'2024-04-28','2028-04-28',146),
(247,395000.00,9.10,'2024-05-11','2029-05-11',147),
(248,170000.00,8.00,'2024-05-24','2028-05-24',148),
(249,365000.00,8.80,'2024-06-06','2029-06-06',149),
(250,290000.00,8.60,'2024-06-19','2029-06-19',150);



INSERT INTO Transactions VALUES
(316,'2024-02-20',6200.00,'Deposit',1016,116),
(317,'2024-02-22',2800.00,'Withdrawal',1017,117),
(318,'2024-02-25',7500.00,'Deposit',1018,118),
(319,'2024-02-28',3400.00,'Withdrawal',1019,119),
(320,'2024-03-02',9100.00,'Deposit',1020,120),
(321,'2024-03-05',2100.00,'Withdrawal',1021,121),
(322,'2024-03-08',6800.00,'Deposit',1022,122),
(323,'2024-03-11',4500.00,'Withdrawal',1023,123),
(324,'2024-03-14',8300.00,'Deposit',1024,124),
(325,'2024-03-17',3900.00,'Withdrawal',1025,125),
(326,'2024-03-20',7200.00,'Deposit',1026,126),
(327,'2024-03-23',2600.00,'Withdrawal',1027,127),
(328,'2024-03-26',8700.00,'Deposit',1028,128),
(329,'2024-03-29',3100.00,'Withdrawal',1029,129),
(330,'2024-04-01',9400.00,'Deposit',1030,130),
(331,'2024-04-04',4200.00,'Withdrawal',1031,131),
(332,'2024-04-07',7600.00,'Deposit',1032,132),
(333,'2024-04-10',2800.00,'Withdrawal',1033,133),
(334,'2024-04-13',9900.00,'Deposit',1034,134),
(335,'2024-04-16',3500.00,'Withdrawal',1035,135),
(336,'2024-04-19',8100.00,'Deposit',1036,136),
(337,'2024-04-22',2400.00,'Withdrawal',1037,137),
(338,'2024-04-25',9200.00,'Deposit',1038,138),
(339,'2024-04-28',3300.00,'Withdrawal',1039,139),
(340,'2024-05-01',10400.00,'Deposit',1040,140),
(341,'2024-05-04',4700.00,'Withdrawal',1041,141),
(342,'2024-05-07',6900.00,'Deposit',1042,142),
(343,'2024-05-10',2500.00,'Withdrawal',1043,143),
(344,'2024-05-13',8700.00,'Deposit',1044,144),
(345,'2024-05-16',3600.00,'Withdrawal',1045,145),
(346,'2024-05-19',9500.00,'Deposit',1046,146),
(347,'2024-05-22',2900.00,'Withdrawal',1047,147),
(348,'2024-05-25',7800.00,'Deposit',1048,148),
(349,'2024-05-28',4100.00,'Withdrawal',1049,149),
(350,'2024-05-31',11200.00,'Deposit',1050,150);

select FirstName, LastName, email, phone from customers;

select AccountID, AccountType, Balance from Accounts;

select * from Accounts
where AccountType = 'Saving';

select * from Accounts 
where balance > 25000;

select * from customers;

select * from transactions 
where amount between 5000 and 20000;

select * from transactions 
where amount not between 5000 and 20000;

select* from Customers
where customerID in (101, 102, 103);

select	* from customers 
where FirstName like 'R%';

select * from customers
where FirstName like 'R%_';

select * from customers
where FirstName not like 'R%';

select * from customers
order by FirstName ASC;

select * from customers
order by firstname;

select * from accounts 
order by balance desc;

select * from accounts 
order by balance desc limit 5;

select * from accounts 
order by balance desc limit 5 offset 2;

select distinct accounttype from accounts;

select * from customers where phone is null;

select * from customers where phone is not null;

select accountID, Balance from Accounts;

select accountID, Balance,
case
when Balance>=50000 then 'premium account'
when Balance>=50000 then 'standard account'
else 'basic account'
end as
accountcategory
from accounts;















show databases;

create database BankingDB1;

use BankingDB1;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);

CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);

CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20)
);

CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);

desc customers;

alter table customers
add DateOfBirth date;

desc customers;

alter table customers
modify phone varchar(20);

desc customers;

alter table accounts
add constraint check_balance
check (balance>=1000);

drop table accountbranches;

alter table customers
add primary key (CustomerID);

alter table accounts
add CustomerID int;

alter table accounts
add constraint fk_account_customer
foreign key(CustomerID)
references Customers(CustomerID);

alter table customers
modify firstname varchar(50) not null;

alter table customers
add constraint up_email unique (email);

select * from accounts 
where accounttype="savings";

select * from accounts;

select * from accounts 
where balance > 25000;

select * from accounts 
where balance between 15000 and 25000;

select * from transactions 
where amount between 5000 and 25000;

select * from customers
where customerID in (101, 102, 103);

select * from customers
where firstname like "r%";

select distinct accounttype
from accounts;

select * from transactions
limit 5 offset 2;

select accountID, balance,
case
when balance >= 50000 then 'premium account'
when balance >= 25000 then 'standard account'
else 'normal account'
end as accountcategory
from accounts;

select * from customers
where firstname like "A%";

select * from customers
where email like '%gmail%';

select * from customers
where lastname like '%kar';

select * from customers
where firstname like 'R%';

select * from customers
where email like '%yahoo%';

select * from customers
where lastname like 'P%';

select * from customers
where phone like '%99';

select * from accounts
where accounttype in ('savings', 'current');

select * from transactions
where transactiontype in ('withdrawal', 'deposit');

select * from customers
where customerID in (101, 102, 103);

-- display accounts belonging to salary and savings account types

select * from accounts
where accounttype in ('salary', 'savings');

-- transactions of payment and deposit

select * from transactions
where transactiontype in ('payment', 'deposit');

-- customrs with customerID 103 and 104

select * from customers
where customerID in (103, 104);

-- retieve selected account records using accountID values

select * from accounts
where accountID in (1001, 1002);

select * from customers
order by lastname ASC;

select * from accounts 
order by balance desc;

select * from transactions
order by transactiondate desc;

-- customers with first name

select * from customers
order by firstname asc;

-- account sorted by accounttype

select * from accounts
order by accounttype asc;

-- transaction sorted by amount in descending order

select * from transactions
order by amount desc;

-- customers sorted by DOB

select * from customers
order by DateOfBirth desc;

select * from accounts 
order by balance desc limit 5;

select * from customers
limit 3;

select * from transactions
limit 25 offset 10;

select * from transactions
order by amount desc limit 3;

select * from customers 
limit 4;

select * from accounts 
limit 3 offset 2;

select * from transactions 
order by transactiondate desc limit 5;

select * from accounts
where accounttype = 'Savings'
order by balance desc;

select * from accounts
where accounttype = 'Current'
order by balance desc;

select * from customers
where firstname like 'S%'
limit 5;

select * from transactions
where transactiontype in ('withdrawal', 'deposit')
order by transactiondate desc;

select * from transactions
where transactiontype in ('withdrawal', 'deposit')
order by transactiondate desc limit 10;

 
 
 


select * from customers;

select firstname from customers;

select firstname, 
upper(firstname) as Name_In_Cap
from customers;

select firstname,
lower(firstname) as Name_In_Low
from customers;

select firstname,
length(firstname) as Lenght_Of_Char
from customers;

select firstname,
left(firstname, 3) as initials
from customers;

select concat(firstname,' ',lastname) as First_and_Last_Name
from customers;

select round(1276.99) as Round_Value;

select ceil(1256.25) as Ceil_Value;

select floor(1256.25) as Floor_Value;

select abs(-2500) as Absolute_Value;

select mod(25,4) as Remainder;

select mod(16,4) as Remainder;

select sign(90) as Sign_Value;

select pow(16, 4) as Pow_Value;

select exp(2) as Exp_Value;

select curdate();

select
CustomerID,
Year(DateOfBirth) as BirthYear
from Customers;

select
customeriD,
month(DateOfBirth) as BirthMonth
from customers;

select
customerID,
datediff(curdate(), DateOfBirth) as Days
from customers;

select firstname,
if(year(dateofbirth) <= 1995, 'Adult', 'Young') as category
from Customers;

select firstname,
ifnull(phone, 'Not Available') as PhoneNumber
from customers;

select greatest(
'2002-09-20',
'2023-08-31') as LatestBirthDate;

select firstname,
nullif(firstname, 'Rahul') as Null_Value
from customers;


-- Aggregate Functions

select sum(balance) as Total_Balance
from accounts;

select avg(balance) as Average_Balance
from accounts;

select min(balance) as Minimum_Balance
from accounts;

select max(balance) as Maximum_Balance
from accounts;

select count(customerID) from customers;

select count(*) from customers;

select 
accounttype,
sum(balance) as totalbalance
from accounts
group by accounttype;

select branchid, 
avg(balance) as Average_Balance
from accounts 
group by branchid;

select accounttype,
avg(balance) as totalbalance
from accounts
group by accounttype
having avg(balance) > 50000;    