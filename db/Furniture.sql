create database Furniture
use Furniture

create table Category
(
Id_Category int primary key identity,
[Name] nvarchar (100)
)

create table Manufacturer
(
Id_Manufacturer int primary key identity,
[Name] nvarchar (100)
)
create table Supplier
(
Id_Supplier int primary key identity,
[Name] nvarchar (100)
)
create table Color
(
Id_Color int primary key identity,
[Name] nvarchar (100)
)
create table [Role]
(
Id_Role int primary key identity,
[Name] nvarchar (100)
)
create table [Status]
(
Id_Status int primary key identity,
[Name] nvarchar (100)
)
create table PaymentMethoods
(
Id_PaymentMethoods int primary key identity,
[Name] nvarchar (100)
)
create table Users
(
Id_Users int primary key identity,
Surename nvarchar (50),
[Name] nvarchar (50),
Middlename nvarchar (50),
Email nvarchar (50),
Phone nvarchar (50),
[Login] nvarchar (100),
[Password] nvarchar (100),
Id_Role int foreign key references [Role](Id_Role)
)
create table [Order]
(
Id_Order int primary key identity,
[Date] DateTime,
Price  Decimal (10,2),
Id_Users int foreign key references Users(Id_Users),
Id_Status int foreign key references [Status](Id_Status),
Id_PaymentMethoods int foreign key references PaymentMethoods(Id_PaymentMethoods)
)
create table Furnitures
(
Id_Furnitures int primary key identity,
[Name] nvarchar (100),
Article nvarchar (50),
Price Decimal (10,2),
Width nvarchar (50),
Height nvarchar (50),
Volume nvarchar (50),
[Weight] nvarchar (50),
[Description] nvarchar (500),
PhotoPath nvarchar (1000),
Id_Category int foreign key references Category (Id_Category),
Id_Manufacturer int foreign key references Manufacturer(Id_manufacturer),
Id_Supplier int foreign key references Supplier(Id_Supplier),
Id_Color int foreign key references Color(Id_Color)
)
create table FurnituresOrder
(
Id_FurnituresOrder int primary key identity,
Id_Furnitures int foreign key references Furnitures (Id_Furnitures),
Id_Order int foreign key references [Order] (Id_Order)
)


create table Materials
(
Id_Materials int primary key identity,
[Name] nvarchar (100)
)
create table MaterialsFurnitures
(
Id_MaterialsFurnitures int primary key identity,
Id_Furnitures int foreign key references Furnitures (Id_Furnitures),
Id_Materials int foreign key references Materials (Id_Materials)
)
create table OrderProduction
(
    Id_OrderProduction int primary key identity,   
    StartDate datetime,
    EndDate datetime,
    ActualEndDate datetime, -- фактическая дата завершения
    [Status] nvarchar(50), -- Ожидание, Выполняется, Завершен
    Comment nvarchar(500),
     Id_Order int foreign key references [Order](Id_Order)
)
create table Cart
(
    Id_Cart int primary key identity,
   
    CreatedDate datetime default getdate(),
    IsActive bit default 1, -- 1 - активная корзина, 0 - уже оформлена
     Id_Users int  foreign key references Users(Id_Users)
)

-- Товары в корзине
create table CartItem
(
    Id_CartItem int primary key identity,
    Id_Cart int not null foreign key references Cart(Id_Cart),
    Id_Furnitures int not null foreign key references Furnitures(Id_Furnitures),
    Quantity int not null check (Quantity > 0),
    AddedDate datetime default getdate()
)