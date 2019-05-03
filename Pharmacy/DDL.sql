	create table Company (
	CompanyID varchar(20) Primary key,
	CompanyName varchar(40) NOT NULL,
	Location varchar(40) NOT NULL,
	ContactNumber varchar(11) NOT NULL
	)

	Create table Medicine(
	MedicineID varchar(20) Primary Key,
	MedicineName varchar(25) NOT NULL,
	CompanyID varchar(20) foreign key references Company(CompanyID) on update cascade on delete cascade,
	Price Float NOT NULL,
	Manufacturing date NOT NULL,
	Expiry date NOT NULL
	)

	Create table Dealer (
	DealerID varchar (20) Primary Key, 
	Name varchar (40) NOT NULL, 
	Contact varchar(11) NOT NULL,
	House varchar(40) NULL, 
	CompanyID varchar(20) foreign key references Company(CompanyID) on update cascade on delete cascade,
	Email varchar(25) check (Email like '%_@__%.__%') Unique,
	Price float NOT NULL
	)

	create table Employ(
	EmpID varchar (20) Primary key,
	EmpName varchar (40) NOT NULL, 
	Contact varchar(11) NOT NULL,
	House varchar(40) NULL, 
	Designation varchar(20) NULL,
	Salary int check(Salary > 0),
	Email varchar(25) check (Email like '%_@__%.__%') Unique,
	)

	create table LoginTable (
	UserName varchar(20) NOT NULL,
	Pass varchar(20) NOT NULL,
	EmpID varchar (20) foreign key references Employ(EmpID) on update cascade on delete cascade, 
	)

	create table Sales (
	MedicineID varchar (20) foreign key references medicine (MedicineID),
	SalesDate date NOT NULL,
	Quantity float NOT NULL,
	price float NOT NULL,
	Totalprice float NOT NULL
	)

	create table Purchase(
	PurchaseID varchar(20) Primary key,
	DealerID varchar (20) foreign key references Dealer(dealerID), 
	Medicineid varchar(20) foreign key references Medicine(MedicineID), 
	PurchaseDate date NOT NULL,
	Quantity float NOT NULL, 
	price float NOT NULL, 
	Totalprice float NOT NULL
	)

	create table Stock(
	Productid varchar(20) foreign key references Medicine(MedicineID) on update cascade on delete cascade, 
	Quantityleft float NOT NULL
	)

	create Table Customers(
	CustomerID varchar(20) Primary Key,
	CustomerName varchar(20) NOT NULL, 
	Productid varchar(20) foreign key references medicine (MedicineID) on update cascade on delete cascade,
	Quantity float NOT NULL Check(Quantity>0), 
	price float NOT NULL,
	)


	create Table Bill(
	CustomerID varchar(20) foreign key references Customers (CustomerID) on update cascade on delete cascade,
	InputPrice float NOT NULL,
	ReturnPrice float NOT NULL,
	);

	create Table Dealerbill(
	DealerID varchar(20) foreign key references Dealer (DealerID) on update cascade on delete cascade,
	InputPrice float NOT NULL,
	ReturnPrice float NOT NULL,
	);
    create table repeatedCustomers(
	CustomerID varchar(20) NOT NULL,
	Productid varchar(20) NOT NULL,
	Quantity float NOT NULL
	)
	create table orgCustomers(
	CustomerID varchar(20) Primary Key,
	CustomerName varchar(20), 
	Productid varchar(20) foreign key references medicine (MedicineID) on update cascade on delete cascade,
	Quantity float, 
	price float 
	)
	drop table virtualStock
    create table virtualStock(
	Productid varchar(20) foreign key references Medicine(MedicineID) on update cascade on delete cascade, 
	Quantityleft float
	)
	
	insert into [Company]
	values ('10C', 'ABC', 'Lahore', 12345),
	('11C', 'DEF', 'Karachi', 45678), 
	('12C', 'GHI', 'Karachi', 32242)

	insert into [Medicine]
	values ('12M', 'ABC', '10C', 20, '10 January 2019', '08 April 2018'), 
	('11M', 'CDF', '11C', 30, '10 January 2018', '18 April 2018')

	
	insert into [Dealer]
	values ('11D', 'Hamza', 0300126453, 'ABC', '10C', 'Hamza@gmail.com', '50'), 
	('10D', 'Hamza', 0300126453, 'ABC', '10C', 'Hamza1@gmail.com', '50')

	insert into [Employ]
	values ('3', 'Saqib', '03216773647', 'FaisalTown', 'Manager', '1000' ,'Saqib@gmail.com'), 
	('2', 'Umair', '03368802220', 'FaisalTown', 'Manager', '1000' ,'Umair@gmail.com')

	insert into [LoginTable]
	values ('Mian', 'Mian1122', '3'),
	('Lucky', 'Luckydon', '2')



	insert into [Purchase]
	values ('15P', '11D', '12M', '17 January 2018', 1000, 40,40000),
	('13P', '11D', '11M', '12 January 2018', 10, 50, 40000), 
	('12P', '11D', '11M', '12 January 2018', 10, 50, 4000),
	('10P', '11D', '12M', '12 January 2018',  10, 50, 4000),
	('11P', '11D', '12M', '17 January 2018',  10, 50, 4000)
	
	
	insert into [Customers]
	values  ('14C', 'Ahmed', '12M', 2, 2000),
    ('11C', 'Usman', '11M', 2, 100)

	select * from LoginTable
	select * from Company
	select * from Medicine
	select * from Dealer
	select * from Employ
	select * from Sales
	select * from Purchase
	select * from stock
	select * from Customers
	select * from DealerBill
	select * from Bill
	Select *from repeatedCustomers
	Select *from orgCustomers
	select * from virtualstock

	delete from LoginTable
	delete from Company
	delete from Purchase
	delete from Medicine
	delete from DealerBill
	delete from Bill
	delete from Dealer
	delete from Employ
	delete from Sales
	delete from stock
	delete from Customers
	delete from orgCustomers
	delete from virtualstock
	delete from repeatedCustomers