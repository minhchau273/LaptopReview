--DROP DATABASE DemoLRA
CREATE DATABASE DemoLRA

USE DemoLRA

CREATE TABLE Product (
	Id				INT IDENTITY PRIMARY KEY,
	[Description]	NVARCHAR(MAX),
	BrandId			INT,
	IsApproved		BIT,
	IsActive		BIT
)

CREATE TABLE AliasProduct (
	Id				INT IDENTITY PRIMARY KEY,
	ProductId		INT,
	Name			NVARCHAR(200),
	Price			FLOAT,
	Url				NVARCHAR(MAX),
	SiteId			INT,
	IsMain			BIT,
	IsApproved		BIT,
	IsActive		BIT
)

CREATE TABLE Brand (
	Id		INT IDENTITY PRIMARY KEY,
	Name	NVARCHAR(50)
)

CREATE TABLE [Site] (
	Id			INT IDENTITY PRIMARY KEY,
	Url			NVARCHAR(MAX),
	IsActive	BIT
)

CREATE TABLE [Image] (
	Id			INT IDENTITY PRIMARY KEY,
	Url			NVARCHAR(MAX),
	ProductId	INT
)

CREATE TABLE Comment (
	Id			INT IDENTITY PRIMARY KEY,
	Content		NVARCHAR(MAX),
	CmtTypeId	INT,
	ProductId	INT,
	IsApproved	BIT
)

CREATE TABLE CommentType (
	Id			INT IDENTITY PRIMARY KEY,
	Name		NVARCHAR(20)
)

CREATE TABLE Dictionary (
	Id			INT IDENTITY PRIMARY KEY,
	Word		NVARCHAR(20),
	WordTypeId	INT
)

CREATE TABLE WordType (
	Id			INT IDENTITY PRIMARY KEY,
	Name		NVARCHAR(20)
)

ALTER TABLE AliasProduct
	ADD CONSTRAINT FK_Product_Product
		FOREIGN KEY (ProductId) REFERENCES Product(Id)
GO

ALTER TABLE Product
	ADD CONSTRAINT FK_Product_Brand
		FOREIGN KEY (BrandId) REFERENCES Brand(Id)
GO

ALTER TABLE AliasProduct
	ADD CONSTRAINT FK_AliasProduct_Site
		FOREIGN KEY (SiteId) REFERENCES Site(Id)
GO

ALTER TABLE [Image]
	ADD CONSTRAINT FK_Image_Product
		FOREIGN KEY (ProductId) REFERENCES Product(Id)
GO

ALTER TABLE Comment
	ADD CONSTRAINT FK_Comment_Product
		FOREIGN KEY (ProductId) REFERENCES Product(Id)
GO

ALTER TABLE Comment
	ADD CONSTRAINT FK_Comment_CommentType
		FOREIGN KEY (CmtTypeId) REFERENCES CommentType(Id)
GO

ALTER TABLE Dictionary
	ADD CONSTRAINT FK_Dictionary_WordType
		FOREIGN KEY (WordTypeId) REFERENCES WordType(Id)
GO