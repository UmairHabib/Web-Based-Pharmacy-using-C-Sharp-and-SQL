use Ppharmacy
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
	----------------------------------------------

	CREATE Trigger Prevent_Procedure on all server
	FOR DROP_PROCEDURE
	AS begin
		RAISERROR ('You cannot Drop Procedure (Trigger Name "Prevent_Procedure")',10,1);
		rollback
	End
	----------------------
	create trigger forStock on Purchase --adds new medicines in stock after purchase from dealer
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
	-------------------------------------------
	alter trigger forSales on Customers   --adds sold medicine in our sale list  
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
			declare @p float;
			select @p=price from Medicine where Medicineid = @medid
			select @tprice=@p*@quantity
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

	-------------------------
	CREATE TRIGGER Valid_Email ON Employ
	instead of insert, update
		As BEGIN
		declare @email varchar(25);
		SELECT @email=i.Email from inserted i;
		IF @email NOT LIKE '%_@__%.__%'
			BEGIN
			Print 'Invalid Emaill... (Trigger Name "Valid_Email")';
			ROLLBACK
			END
		else
			begin
			insert into [Employ]
			select EmpID, EmpName, Contact, House, Designation, Salary ,Email from inserted
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
			rollback
			END
		else
			begin
			insert into [Medicine]
			select MedicineID, MedicineName, CompanyID, Price, Manufacturing, Expiry from inserted
			end
		END
		drop Trigger billcalculation
	alter TRIGGER billcalculation ON Customers
	instead of insert
		As BEGIN
		delete from bill
		declare @finalquantity float;
		declare @price2 varchar(20);
		set @price2=NULL;
		declare @idd varchar(20);
		set @idd=NULL;
		declare @Cid varchar(20);
		declare @mid varchar(20);
		Select @mid=Productid from inserted
		declare @quantity float;
		declare @cusquantity float;
		select @cusquantity=Quantity from inserted
		select @Cid= CustomerID from inserted
		select @idd=CustomerID from Customers where  @Cid=CustomerID
		select @quantity=Quantityleft
		from Stock S
		where S.Productid= @mid
		declare @orgcus varchar(20)
		select @orgcus=CustomerID from orgCustomers
		where CustomerID=@Cid
	    if (@orgcus=@Cid)
		begin
		print 'Customer ID Already Exists'
		end
		else if (@quantity<@cusquantity)
		begin
		print 'Not In STock The Givin Quantity of Medicine'
		end
		else if (@idd IS NULL)
		begin
		set @finalquantity= @quantity-@cusquantity
		delete from [virtualstock]
		insert into [virtualstock]
		values (@mid,@finalquantity)
		INSERT INTO Customers select *from inserted
		END
		ELSE
		begin
		select @quantity=Quantityleft
		from virtualStock 
		set @finalquantity= @quantity-@cusquantity
		update virtualstock set Quantityleft=@finalquantity where Productid=@mid
		INSERT INTO repeatedCustomers select CustomerID,Productid,Quantity from inserted
		end
		END


		drop trigger Valid_Dealer_Purchase_Price
			CREATE TRIGGER Valid_Dealer_Purchase_Price ON Purchase
	instead of insert
	As BEGIN
	declare @price float;
	declare @quan float;
	declare @purchaseprice float;
	select @quan= Quantity from inserted
	declare @purchaseprice2 float;
declare @price2 float;
declare @idd varchar(20);
declare @cmpid varchar(20);
declare @med varchar(20);
select @med=Medicineid from inserted
SELECT @price=price from inserted;
SELECT @idd=Dealerid from inserted;

select @cmpid=companyid from Dealer where @idd=Dealerid
set @purchaseprice= (@quan*@price);
Select @price2=NULL
	Select @price2=price
			from Medicine
			where Companyid=@cmpid AND MedicineID= @med
		set @purchaseprice2= (@quan*@price2);


	IF(@purchaseprice>=@purchaseprice2)
	BEGIN
	declare @return  float;
Select @return =@purchaseprice-@purchaseprice2

INSERT INTO Purchase select *from inserted

delete from Dealerbill

	insert into [Dealerbill]
values(@idd,@purchaseprice,@return)

	END
	END

