DROP TABLE IF EXISTS Product
DROP TABLE IF EXISTS ProductView
DROP TABLE IF EXISTS ProductModel
DROP TABLE IF EXISTS ArrivalWarehouse
DROP TABLE IF EXISTS AcceptProduct

CREATE DATABASE [Fabrick] 
GO
USE Fabrick
GO
CREATE TABLE [Product]
(
[IDProduct] INT PRIMARY KEY IDENTITY,
[ProductView] NVARCHAR (50) NOT NULL,
[ProductName] NVARCHAR (50) NOT NULL,
);

CREATE TABLE [ProductView]
(
[IDProductView] INT PRIMARY KEY IDENTITY,
[IDProduct] INT FOREIGN KEY REFERENCES [Product](IDProduct),
[ViewProduct] NVARCHAR (50) NOT NULL,
);
CREATE TABLE [ProductModel]
(
[IDProductModel] INT PRIMARY KEY IDENTITY,
[IDProduct] INT FOREIGN KEY REFERENCES [Product](IDProduct),
[NameModel] NVARCHAR (50) NOT NULL,
[PriceModel] INT NOT NULL,
);
CREATE TABLE [ArrivalWarehouse]
(
[IDArivalWarehouse] INT PRIMARY KEY IDENTITY,
[IDProductModel] INT FOREIGN KEY REFERENCES [ProductModel](IDProductModel),
[DataArrivalWarehouse] INT NOT NULL,
[NumberProduct] INT NOT NULL,
[WhoAcceptProduct] NVARCHAR (50) NOT NULL,
);
CREATE TABLE [AcceptProduct]
(
[IDAcceptProduct] INT PRIMARY KEY IDENTITY,
[IDArivalWarehouse] INT FOREIGN KEY REFERENCES [ArrivalWarehouse](IDArivalWarehouse),
[LastName] NVARCHAR (50) NOT NULL,
[Name] NVARCHAR (50) NOT NULL,
);


