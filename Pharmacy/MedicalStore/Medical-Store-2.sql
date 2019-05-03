create database MedicineStore
use MedicineStore

use Master
drop database MedicineStore


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
Email varchar(25) NULL,
Price float NOT NULL
)

create table Employ(
EmpID varchar (20) Primary key,
EmpName varchar (40) NOT NULL, 
Contact varchar(11) NOT NULL,
House varchar(40) NULL, 
Designation varchar(20) NULL,
Salary int check(Salary > 0),
Email varchar(25) NULL,
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
Totalprice float NOT NULL
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


-----Triggers----------------------------------------------
CREATE Trigger PreventDropTables
ON DATABASE FOR DROP_TABLE
AS begin
RAISERROR ('You cannot Drop any Table (Trigger Name "PreventDropTables")',10,1);
rollback
end
---------------------
CREATE Trigger Prevent_Database on all server
FOR DROP_DATABASE
AS begin
RAISERROR ('You cannot Drop Database (Trigger Name "Prevent_Database")',10,1);
rollback
end

----------------------
create trigger forStock on Purchase
for insert
as begin
	declare @quantity int;
	declare @medid varchar(20);
select @medid = Medicineid from inserted
select @quantity = Quantity from inserted
	if((select Quantityleft from Stock where Productid = @medid) >= 0 )
	begin
		Update Stock
		set Quantityleft = Quantityleft + @quantity
		where Productid = @medid
	end
	else
	begin
		insert into [Stock]
		values (@medid, @quantity)
	end
end

select * from Purchase
select * from Stock
select * from Dealer
select * from Company

insert into [Dealer]
values ('10D', 'Hamza', 0300126453, 'ABC', '10C', 'Hamza@gmail.com', '50')

insert into [Purchase]
values ('10P', '10D', '10M', '12 January 2018', 10, 25, 250)

insert into [Purchase]
values ('11P', '10D', '10M', '17 January 2018', 10, 25, 250)

-------------------------------------------
create trigger forSales on Customers
for insert
as begin
	declare @quantity int;
	declare @medid varchar(20);
	declare @Cdate date;
	declare @price int;
	declare @tprice int;
select @medid = Productid from inserted;
select @quantity = Quantity from inserted;
select @Cdate = GETDATE();
select @price = price from inserted;
select @tprice = Totalprice from inserted;
	if((select Quantity from Sales where Medicineid = @medid) >= 0 )
	begin
		Update Sales
		set Quantity = Quantity + @quantity
		where Medicineid = @medid;

		Update Sales
		set Totalprice = Totalprice + @tprice
		where Medicineid = @medid;
	end
	else
	begin
		insert into [Sales]
		values (@medid, @Cdate ,@quantity, @price, @tprice)
	end
end

select * from Customers
select * from Sales
select * from Medicine

insert into [Customers]
values ('10C', 'Ali', '10M', 1, 20, 20) 

insert into [Customers]
values ('11C', 'Usman', '10M', 2, 20, 40) 
-------------------------------------------
----not tested
CREATE TRIGGER Valid_Customer_Purchase_Price ON Customers
For insert,update
As BEGIN
    declare @price float;
	declare @price2 float;
	declare @idd varchar(20);
SELECT @price=price from inserted;
SELECT @idd=Productid from inserted;

Select @price2=NULL
Select @price2=Medicine.price
FROM Medicine
where Medicine.MedicineID=@idd

    IF (@price2<>NULL)
    BEGIN
		IF(@price>=@price2)
		BEGIN
	      declare @return  float;
		  Select @return =@price-@price2
		  insert into [Bill]
		  values(@idd,@price,@return)
		END
		ELSE
		BEGIN
		    Print 'Your Price is less then required amount (Trigger Name "Valid_Customer_Purchase_Price")';
		END	
	END
else
	begin 
	Print 'No such medicine found (Trigger Name "Valid_Customer_Purchase_Price")';
end
END

-----------------------------------------------
---not tested
CREATE TRIGGER Valid_Dealer_Purchase_Price ON Purchase
For insert,update
As BEGIN
    declare @price float;
	declare @price2 float;
	declare @idd varchar(20);
SELECT @price=price from inserted;
SELECT @idd=Dealerid from inserted;

Select @price2=NULL
Select @price2=Dealer.price
FROM Dealer
where Dealer.DealerID=@idd

    IF (@price2<>NULL)
    BEGIN
		IF(@price>=@price2)
		BEGIN
	      declare @return  float;
		  Select @return =@price-@price2
		  insert into [Dealerbill]
		  values(@idd,@price,@return)
		END
		ELSE
		BEGIN
		    Print 'Your Price is less then Dealer required amount (Trigger Name "Valid_Dealer_Purchase_Price")';
		END	
	END
else
	begin 
	Print 'No such Dealer found (Trigger Name "Valid_Dealer_Purchase_Price")';
end
END

----------------------------------------------


CREATE Trigger Prevent_Procedure on all server
FOR DROP_PROCEDURE
AS begin
RAISERROR ('You cannot Drop Procedure (Trigger Name "Prevent_Procedure")',10,1);
rollback
end

--enable trigger Prevent_Procedure on all server
-------------------------
CREATE TRIGGER Valid_Email ON Employ
instead of insert, update
As BEGIN
    declare @email varchar(25);
SELECT @email=i.Email from inserted i;
    IF @email NOT LIKE '%_@__%.__%'
    BEGIN
            Print 'Invalid Emaill... (Trigger Name "Valid_Email")';
    END
	else
	begin
			insert into [Employ]
			select EmpID, EmpName, Contact, House, Designation, Salary ,Email from inserted
	end
END

--------------------------------------
---not tested
CREATE TRIGGER TotalQuantity_OurQuantity ON Purchase
For insert,update
As BEGIN
    declare @quantity float;
	declare @quantity2 float;
	declare @idd varchar(20);
	Select @idd=NULL
	declare @iddd varchar(20);
	Select @iddd=NULL
SELECT @quantity=Quantity from inserted;

SELECT @idd=Medicineid from inserted;


SELECT @iddd=Productid from Stock
where @idd=Stock.Productid


    IF (@iddd<>NULL)
    BEGIN
		
	declare @id4 float;
		SELECT @id4=Quantityleft from Stock		
where @iddd=Stock.Productid
	      declare @final  float;
		  select @final=@id4+@quantity
		 delete from Stock where @iddd=Stock.Productid
		 insert into [Stock]
		 values (@iddd,@final)
		END
		if ((@iddd=NULL))
		BEGIN
		    Print 'New in table (Trigger Name "TotalQuantity_OurQuantity")';
			insert into [Stock]
		 values (@idd,@quantity)
		END
		if (@idd=NULL)
	begin 
	Print 'No such medicine found in stock(Trigger Name "TotalQuantity_OurQuantity")';
end
END


--------------------------------------

CREATE TRIGGER Valid_Expiry_Insert ON Medicine
instead of insert
As BEGIN
    declare @exp Date;
	declare @mag Date;
SELECT @exp=Expiry from inserted;
SELECT @mag=Manufacturing from inserted;
    IF (DATEDIFF(day, @mag, @exp) < 0)
    BEGIN
            Print 'Invalid Expiry as it is less than manufacturing date of medicine (Trigger Name "Valid_Expiry")';
    END
	else
	begin
			insert into [Medicine]
			select MedicineID, MedicineName, CompanyID, Price, Manufacturing, Expiry from inserted
	end
END

-----Procedures----------------------------------------------
select * from LoginTable
select * from Company
select * from Medicine
select * from Dealer
select * from Employ
select * from Sales
select * from Purchase
select * from stock
select * from Customers

---------------------------------------------

create procedure Find_Price @id varchar(20)
as begin
select M.MedicineName, M.Price
from Medicine M
where M.MedicineID = @id;
end
execute Find_Price '10M'

-------------------------------------------

create procedure Find_Expiry @id varchar(20)
as begin
select M.MedicineName, M.Expiry
from Medicine M
where M.MedicineID = @id;
end
execute Find_Expiry'10M'

-------------------------------------------

create procedure Who_took_these @id varchar(20)
as begin
select CustomerName
from Customers
where Productid = @id
end
execute Who_took_these 3

-------------------------------------------

create procedure Find_All_Info @id varchar(20)
as begin
select M.MedicineName, C.CompanyName, C.ContactNumber, M.Price, M.Manufacturing, M.Expiry
from Medicine M join Company C on M.CompanyID = C.CompanyID
where M.MedicineID = @id
end
execute Find_All_Info '10M'

-------------------------------------------
create procedure Quantityleft @id varchar(20)
as begin
select M.MedicineName,Q.Quantityleft
from Medicine M, Stock Q
where Q.Productid=@id
end
execute Quantityleft '10C'
-------------------------------------------
create procedure PurchaseDates @id varchar(20)
as begin
select PurchaseDate
from Purchase
where Medicineid=@id
end
execute PurchaseDates '10C'
-------------------------------------------
create procedure CompanyName @id varchar(20)
as begin
select  CompanyName
from  Company 
where CompanyID= @id
end
execute CompanyName '10C'
-------------------------------------------
create procedure DealernamefromCompID @id varchar(20)
as begin
select  DealerID,Name
from  Dealer
where CompanyID= @id
end
execute DealernamefromCompID '10C'
-------------------------------------------
select *
from Company

insert into [Company]
values ('10C', 'ABC', 'Lahore', 12345),
 ('11C', 'DEF', 'Karachi', 45678), 
 ('12C', 'GHI', 'Karachi', 32242)

select *
from Medicine

insert into [Medicine]
values ('10M', 'ABC', '11C', 20, '10 January 2018', '08 April 2018'), 
('11M', 'CDF', '11C', 30, '10 January 2018', '18 April 2018')

delete 
from Medicine


---------------------------------------

create procedure Update_Expiry @d date, @id varchar(20)
as begin
declare @mag date
select @mag = Manufacturing from Medicine
IF (DATEDIFF(day, @mag, @d) < 0)
    BEGIN
            Print 'Invalid Expiry as it is less than manufacturing date of medicine (Trigger Name "Valid_Expiry")';
    END
else
	begin
			update Medicine
			set Expiry = @d
			where MedicineID = @id
			Print 'Expiry Date updated'
	end
end
execute Update_Expiry '10 January 2018' ,'10M'

--enable trigger Prevent_Procedure on all server
------------------------------------------------
create procedure Update_Manf @d date, @id varchar(20)
as begin
declare @exp date
select @exp = Expiry from Medicine
IF (DATEDIFF(day, @d, @exp) < 0)
    BEGIN
            Print 'Invalid Manufacturing as it is greater than expiry date of medicine (Trigger Name "Valid_Expiry")';
    END
else
	begin
			update Medicine
			set Manufacturing = @d
			where MedicineID = @id
			Print 'Manufacturing Date updated'
	end
end
execute Update_Manf '10 March 2028' ,'10M'

select *
from Medicine
--------------------------------------------
create procedure GetLastID @ans varchar output
as begin
select @ans = (select top(1) EmpID from Employ order by EmpID desc)
if(@ans is null)
	begin
		select @ans = '1'
	end
end

declare @ans varchar
execute GetLastID @ans output
select @ans as 'Result'

--------------------------------------------

create procedure SignupDatabase @id varchar(20), @name varchar(40), @contact varchar(11), @adrs varchar(40), @desig varchar(20), @sal int, @Email varchar(25), @usrn varchar(20), @pass varchar(20), @output int output
as begin
if(@usrn = (select UserName from LoginTable where UserName = @usrn))
	begin
		select @output = '0'
	end
else
	begin
		insert into [Employ]
		values (@id, @name, @contact, @adrs, @desig, @sal, @Email)

		insert into [LoginTable]
		values (@usrn, @pass, @id)

		select @output = '1'
	end
end

declare @output int
execute SignupDatabase '3', 'Saqib', '03009477297', 'ModelTown', 'Worker', '5000', 'Hamza@gmail.com', 'Meow', 'Mian1122', @output output
select @output as 'Result'

delete from Employ where EmpID = '3'
delete from LoginTable where EmpID = '3'

--------------------------------------------
select * from LoginTable
create procedure LoginDatabase @usr varchar(20), @pas varchar(20), @ans int output
as begin
if(@pas = (select Pass from LoginTable where UserName = @usr))
	begin
	--print 'Login Successful'
	select @ans = 1;
	end
else
	begin
	--print 'Username or password is incorrect'
	select @ans = 0;
	end
end

declare @ans int
execute LoginDatabase 'Mian', 'Mian1122', @ans output
select @ans as 'Result'

disable trigger Prevent_Procedure on all server
drop procedure LoginDatabase

insert into [Employ]
values ('1', 'Saqib', '03216773647', 'FaisalTown', 'Manager', '1000' ,'Saqib@gmail.com'), 
('2', 'Umair', '03368802220', 'FaisalTown', 'Manager', '1000' ,'Umair@gmail.com')

select *
from Employ

select *
from LoginTable

delete 
from Employ

insert into [LoginTable]
values ('Mian', 'Mian1122', '1'), ('Lucky', 'Luckydon', '2')

delete 
from LoginTable
---------------------------------------

create procedure Show_All_Expired
as begin
select M.MedicineID, M.MedicineName, M.Expiry as 'Expired on'
from Medicine M
where DATEDIFF(day, M.Expiry, GETDATE()) > 0
end
execute Show_All_Expired

----------------------------------------

create procedure Show_If_Expired @id varchar(20)
as begin
declare @dateofmed date
select @dateofmed = M.Expiry from Medicine M where M.MedicineID = @id
if(DATEDIFF(day, @dateofmed, GETDATE()) > 0)
begin
print 'This Medicine is expired'
end
else
begin
print 'This Medicine is not expired'
end
end
execute Show_If_Expired '11M'
--------------------------------------------

create procedure Show_outofstock
as begin
select M.MedicineID, M.MedicineName
from Medicine M join Stock S on M.MedicineID = S.Productid
where S.Quantityleft = 0
end
execute Show_outofstock

select * from Medicine

insert into [Stock]
values ( '11M', 0), ( '10M', 5)
select * from Stock

--------------------------------------------
create procedure noOfSale @id varchar(20)
as begin 
select MedicineID, Quantity, price, Totalprice
from Sales
where MedicineID = @id
end
execute noOfSale '10M'
---------------------------------------------


----trigger to minus the quantity of medicine when bought


----required medicine table (out of stock medicines and the medicines on special order would go in this table)
----medicine which would go out of stock would automatically go to this table by trigger
----show medicines which are requried (procedure)
----show profit on medicine
