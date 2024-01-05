CREATE DATABASE retailerdb;
USE retailerdb;


/* 1) CUSTOMERS TABLE */
CREATE TABLE `retailerdb`.`customers` 
( `CusNum` INT NOT NULL AUTO_INCREMENT , 
`CusFirstName` VARCHAR(20) NOT NULL , 
`CusLastName` VARCHAR(20) NOT NULL , 
`PhoneNum` INT(10) NOT NULL , 
`Address` VARCHAR(50) NOT NULL , 
`City` VARCHAR(20) NOT NULL , 
`State` VARCHAR(20) NOT NULL , 
PRIMARY KEY (`CusNum`)) ENGINE = InnoDB;
INSERT INTO `customers` (`CusNum`, `CusFirstName`, `CusLastName`, `PhoneNum`, `Address`, `City`, 
`State`) VALUES ('001', 'Vikas', 'Mehta', '1684123121', 'Veer savarkar heights, Phase 1', 'Gandhinagar', 'Gujrat');
INSERT INTO `customers` (`CusNum`, `CusFirstName`, `CusLastName`, `PhoneNum`, `Address`, `City`, 
`State`) VALUES ('002', 'Arhsim', 'Mishra', '1578523692', 'House Number 10, street 6', 'Rishikesh', 'Utkrakhand ');
INSERT INTO `customers` (`CusNum`, `CusFirstName`, `CusLastName`, `PhoneNum`, `Address`, `City`, 
`State`) VALUES ('003', 'Ahnis', 'Sinha', '0578523654', 'I-180, Shastri Nagar', 'Meerut', 'Uttar Pradesh');
INSERT INTO `customers` (`CusNum`, `CusFirstName`, `CusLastName`, `PhoneNum`, `Address`, `City`, 
`State`) VALUES ('004', 'Arnav', 'Singhal', '2012546547', 'L-20 Polkha road', 'Mumbai', 'Maharashtra ');
INSERT INTO `customers` (`CusNum`, `CusFirstName`, `CusLastName`, `PhoneNum`, `Address`, `City`, 
`State`) VALUES ('005', 'Biswa', 'Dash', '1265498732', 'Flat 203, Jal Vayu Vihar', 'Chandigarh', 'Punjab');


/* 2) OFFICE TABLE */
CREATE TABLE `retailerdb`.`office` 
( `OfficeCode` VARCHAR(10) NOT NULL , 
`Address` VARCHAR(100) NOT NULL , 
`City` VARCHAR(30) NOT NULL , 
`State` VARCHAR(30) NOT NULL , 
`Postal Code` INT(6) NOT NULL , 
`PhoneNum` INT(13) NOT NULL , 
PRIMARY KEY (`OfficeCode`)) ENGINE = InnoDB;
INSERT INTO `office` (`OfficeCode`, `Address`, `City`, `State`, `Postal Code`, `PhoneNum`) VALUES 
('OF1', '121, Malik Plaza 3, Sector 3', 'Dwarka', 'Delhi', '110078', '1234567890');
INSERT INTO `office` (`OfficeCode`, `Address`, `City`, `State`, `Postal Code`, `PhoneNum`) VALUES 
('OF2', '321, Shopping Road', 'Ahemdabad', 'Gujrat', '105635', '1237894560');
INSERT INTO `office` (`OfficeCode`, `Address`, `City`, `State`, `Postal Code`, `PhoneNum`) VALUES 
('OF3', '153, Kailashi Road', 'Mumbai', 'Maharashtra ', '441234', '1324657980');


/* 3) EMPLOYEES TABLE */
CREATE TABLE `retailerdb`.`employees` 
( `EmpNum` INT(10) NOT NULL AUTO_INCREMENT , 
`FirstName` VARCHAR(50) NOT NULL , 
`LastName` VARCHAR(50) NOT NULL ,
`extension` VARCHAR(10) NOT NULL , 
`email` VARCHAR(50) NOT NULL , 
`OfficeCode` VARCHAR(10) NOT NULL , 
`ReportsTo` INT(10) NULL DEFAULT NULL , 
`JobTitle` VARCHAR(50) NOT NULL , 
PRIMARY KEY (`EmpNum`), INDEX (`FirstName`), 
INDEX (`LastName`), 
FOREIGN KEY (`officeCode`) REFERENCES `office` (`officeCode`) ON DELETE RESTRICT ON 
UPDATE CASCADE) ENGINE = InnoDB;
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('001', 'Ramesh', 'Singh', '102', 'ramsingh@gmail.com', 'OF1', NULL, 
'cashier '); 
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('002', 'Rakesh', 'Pawar', '152', 'rakpawar@gmail.com', 'OF1', NULL, 
'cashier');
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('003', 'Atul', 'Khan', '665', 'atukhan@yahoo.in', 'OF2', NULL, 'cashier ');
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('004', 'Adil', 'Mohd. Khan', '355', 'adimohd@hotmail.com', 'OF3', NULL, 
'cashier ');
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('005', 'Sam', 'D\'Souza', '189', 'samdsouza@gmail.com', 'OF3', NULL, 
'Branch Manager');
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('1001', 'Harshita', 'Sirohi', '981', 'harsirohi150@gmail.com', 'OF1', 
NULL, 'Branch Manager');
INSERT INTO `employees` (`EmpNum`, `FirstName`, `LastName`, `extension`, `email`, `OfficeCode`, 
`ReportsTo`, `JobTitle`) VALUES ('1002', 'Kushagra', 'Jain', '651', 'kusjazz@gamil.com', 'OF2', NULL, 
'Branch Manager');


/* 4) PRODUCTS TABLE */
CREATE TABLE `retailerdb`.`products` 
( `ProdID` INT(10) NOT NULL AUTO_INCREMENT , 
`ProdName` VARCHAR(20) NOT NULL , 
`ProdDescription` VARCHAR(250) NOT NULL , 
`ProdVendor` VARCHAR(50) NOT NULL , 
`QuantityLeft` INT NOT NULL , 
`price` DECIMAL NOT NULL , 
`MRP` DECIMAL NOT NULL , 
PRIMARY KEY (`ProdID`)) ENGINE = InnoDB;
INSERT INTO `products` (`ProdID`, `ProdName`, `ProdDescription`, `ProdVendor`, `QuantityLeft`,
`price`, `MRP`) VALUES ('201', 'T.V', 'OLED TV with amazing range of colors and amazing sound quality', 
'Shyam Electronics', '5', '19999.99', '25000.00');
INSERT INTO `products` (`ProdID`, `ProdName`, `ProdDescription`, `ProdVendor`, `QuantityLeft`, 
`price`, `MRP`) VALUES ('202', 'Home Theater System', 'Amazing sound quality with all inbuild and 
bluetooth connectivity to have the best possible audio experience at your home', 'Shyam Electronics', '2', 
'10000', '10000');
INSERT INTO `products` (`ProdID`, `ProdName`, `ProdDescription`, `ProdVendor`, `QuantityLeft`, 
`price`, `MRP`) VALUES ('203', 'Chair', 'Soft and compy chairs', 'Radha Furnishings', '10', '500', '500');
INSERT INTO `products` (`ProdID`, `ProdName`, `ProdDescription`, `ProdVendor`, `QuantityLeft`, 
`price`, `MRP`) VALUES ('204', 'Recycled Notebook', 'Good quality recycled paper', 'Prakhar Stationary ', 
'50', '59', '69');
INSERT INTO `products` (`ProdID`, `ProdName`, `ProdDescription`, `ProdVendor`, `QuantityLeft`, 
`price`, `MRP`) VALUES ('205', 'Parker Pen', 'great pen from a leading manufacturer in the industry ', 
'Prakhar Stationary ', '30', '89', '150');


/* 5) ORDERS TABLE */
CREATE TABLE `retailerdb`.`orders` 
( `ordernum` INT(10) NOT NULL AUTO_INCREMENT , 
`orderdate` DATE NOT NULL , 
`reqdate` DATE NOT NULL , 
`shippeddate` DATE NOT NULL , 
`status` VARCHAR(15) NOT NULL , 
`comments` VARCHAR(100) NOT NULL , 
`CusNum` INT(10) NOT NULL , 
PRIMARY KEY (`ordernum`),
FOREIGN KEY (`CusNum`) REFERENCES `customers`(`CusNum`) ON DELETE RESTRICT ON UPDATE 
CASCADE) ENGINE = InnoDB;
INSERT INTO `orders` (`ordernum`, `orderdate`, `reqdate`, `shippeddate`, `status`, `comments`, `CusNum`) 
VALUES ('601', '2022-05-12', '2022-05-24', '2022-05-22', 'delivered', '', '002');
INSERT INTO `orders` (`ordernum`, `orderdate`, `reqdate`, `shippeddate`, `status`, `comments`, `CusNum`) 
VALUES ('602', '2022-05-19', '2022-05-30', '2022-05-28', 'not shipped', 'fragile item, please handle with care', '003');
INSERT INTO `orders` (`ordernum`, `orderdate`, `reqdate`, `shippeddate`, `status`, `comments`, `CusNum`) 
VALUES ('603', '2022-05-05', '2022-05-24', '2022-05-23', 'shipped', '', '001');
INSERT INTO `orders` (`ordernum`, `orderdate`, `reqdate`, `shippeddate`, `status`, `comments`, `CusNum`) 
VALUES ('604', '2022-05-21', '2022-05-22', '2022-05-22', 'shipped', 'please deliver ASAP', '001');
INSERT INTO `orders` (`ordernum`, `orderdate`, `reqdate`, `shippeddate`, `status`, `comments`, `CusNum`) 
VALUES ('605', '2022-05-18', '2022-05-31', '2022-05-30', 'delivered ', '', '005');


/* 6) ORDERDETAILS TABLE */
CREATE TABLE `retailerdb`.`orderdetails` 
( `ordernum` INT(10) NOT NULL , 
`ProdID` INT NOT NULL , 
`quantity` INT UNSIGNED NOT NULL , 
`PriceEach` DECIMAL NOT NULL , 
PRIMARY KEY (`ordernum`,`ProdID`), 
FOREIGN KEY (`ordernum`) REFERENCES `orders`(`ordernum`) ON DELETE RESTRICT ON UPDATE CASCADE, 
FOREIGN KEY (`ProdID`) REFERENCES `products`(`ProdID`) ON DELETE RESTRICT ON UPDATE CASCADE) ENGINE = InnoDB;
INSERT INTO `orderdetails` (`Ordernum`, `ProdID`, `quantity`, `PriceEach`) VALUES ('601', '201', '2', '19999.99');
INSERT INTO `orderdetails` (`Ordernum`, `ProdID`, `quantity`, `PriceEach`) VALUES ('602', '201', '1', '19999.99');
INSERT INTO `orderdetails` (`Ordernum`, `ProdID`, `quantity`, `PriceEach`) VALUES ('603', '205', '5', '150');
INSERT INTO `orderdetails` (`Ordernum`, `ProdID`, `quantity`, `PriceEach`) VALUES ('604', '203', '4', '500');
INSERT INTO `orderdetails` (`Ordernum`, `ProdID`, `quantity`, `PriceEach`) VALUES ('605', '204', '10', '59');


/* QUERY EXECUTION */

/* 1) SELECT QUERIES */
select (CusNum),(CusFirstName),(City)from customers;
select (OfficeCode),(City) from office;
select (EmpNum),(FirstName),(email),(OfficeCode) from employees;
select (ProdID),(ProdVendor),(ProdName) from products;
select (ordernum),(shippeddate),(status) from orders;
select (Ordernum),(ProdID),(quantity) from orderdetails;
select (EmpNum),(FirstName),(email),(OfficeCode) from employees where officecode='OF1';
select (ProdID),(ProdVendor),(ProdName),(price) from products where price>='400';
select (ordernum),(orderdate),(status) from orders order by 'orderdate';

/* 2) ALTER AND UPDATE QUERIES */

ALTER TABLE `employees` CHANGE `ReportsTo` `Boss` INT(10) NULL DEFAULT NULL;
UPDATE `employees` SET `Boss` = '1001' WHERE `employees`.`OfficeCode` = 'OF1';
UPDATE `employees` SET `Boss` = '1002' WHERE `employees`.`OfficeCode` = 'OF2';
UPDATE `employees` SET `Boss` = '1003' WHERE `employees`.`OfficeCode` = 'OF3';

ALTER TABLE `employees` ADD `D.O.B` DATE NULL DEFAULT NULL AFTER `JobTitle`;
UPDATE `employees` SET `D.O.B` = '2012-05-15' WHERE `employees`.`EmpNum` = 1;
UPDATE `employees` SET `D.O.B` = '2013-04-20' WHERE `employees`.`EmpNum` = 2;
UPDATE `employees` SET `D.O.B` = '2014-08-03' WHERE `employees`.`EmpNum` = 3;
UPDATE `employees` SET `D.O.B` = '2012-10-30' WHERE `employees`.`EmpNum` = 4;
UPDATE `employees` SET `D.O.B` = '2013-04-16' WHERE `employees`.`EmpNum` = 1001;
UPDATE `employees` SET `D.O.B` = '2012-01-01' WHERE `employees`.`EmpNum` = 1002;
UPDATE `employees` SET `D.O.B` = '2013-05-14' WHERE `employees`.`EmpNum` = 1003;

/* Select, From, Where, Order By involving AND OR Between operator */
SELECT * FROM `employees` WHERE `JobTitle` = 'cashier ' AND `D.O.B` >= '2013-01-01';
SELECT * FROM `employees` WHERE `OfficeCode` = 'OF1 ' OR `OfficeCode` = 'OF2 'AND `D.O.B` >='2012-08-01' order by `D.O.B`;

/* 3) UNION AND INTERSECTION */
select `ordernum` from orders where status='delivered' or status='shipped' union select `ordernum` from orderdetails where PriceEach>='500';
select `ordernum` from orders where status='delivered' or status='shipped' intersect select `ordernum`from orderdetails where PriceEach>='500';

/* 4) JOINS */
select `FirstName`,`LastName`, JobTitle from employees natural join office where State='Delhi';
select `CusFirstName`,`CusLastName`,`CusNum` from Customers inner join orders using (`CusNum`);
select * from Customers right join orders using (`CusNum`) left join orderdetails using (`OrderNum`);
select * from Customers left join orders using (`CusNum`);
select * from Customers right join orders using (`CusNum`);


/* VIEW CREATIONS */

/* Creating VIEW */
CREATE OR REPLACE VIEW `orderview` AS select `CusNum`, `CusFirstName` , `CusLastName` ,`OrderNum`, `ProdID`, `quantity`, `PriceEach`,`status`,`orderdate` FROM Customers right join orders using (`CusNum`) left join orderdetails using (`OrderNum`);
select * from orderview;
select `CusFirstName`, `OrderNum`, `PriceEach`, `status` from orderview where `orderdate`>='2022-05-18';
select `CusFirstName`, `OrderNum`, `PriceEach`, `status` from orderview where `PriceEach`>='500';
select `CusFirstName`, `OrderNum`, `PriceEach`, `quantity` from orderview where `quantity`>'1';


