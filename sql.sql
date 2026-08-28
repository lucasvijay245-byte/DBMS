CREATE DATABASE BataShowroom;

USE BataShowroom;

CREATE TABLE Category
(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY(CategoryID)
    REFERENCES Category(CategoryID)
);

SELECT * FROM Category;

INSERT INTO Category VALUES
(1,'School Shoes');

INSERT INTO Category VALUES
(2,'Formal Shoes'),
(3,'Sports Shoes'),
(4,'Sandals'),
(5,'Slippers');

INSERT INTO Product VALUES
(101,'Bata School Shoe',1200.00,50,1),
(102,'Bata Formal Shoe',2500.00,30,2);

INSERT INTO Product VALUES
(103,'Power Sports Shoe',3000.00,20,3),
(104,'Bata Sandal',800.00,40,4),
(105,'Bata Slipper',500.00,60,5);

SELECT * FROM Product;

 