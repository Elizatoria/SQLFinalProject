/* Create Final Project Database */
-- USE master
-- GO
-- CREATE DATABASE FinalProject

/* Used Microsoft SQL Server Management Studio to add CSV Files to Database */

/* Add a Column to Customer to make it easier to replace 
the values of Orders.Phone with the values of Customer.Phone */
-- ALTER TABLE Customer
-- ADD ID INT IDENTITY(1,1)

/* Replace Column Values from a Column in another Table */
-- UPDATE Orders 
-- SET Orders.Phone = (SELECT Phone FROM Customer WHERE Customer.ID = Orders.Order_ID)

/* Dropped the added Column since we don't need it for the rest of the project */
-- ALTER TABLE Customer
-- DROP COLUMN ID

/* Added Foreign Key to Orders.Phone */
-- USE FinalProject
-- GO
-- ALTER TABLE Orders
-- ADD CONSTRAINT FK_PersonOrder
-- FOREIGN KEY (Phone)
-- REFERENCES Customer(Phone)

/* Backup the Database that was just created */
-- BACKUP DATABASE FinalProject
-- TO DISK = 'C:/TMP/FinalProject.bak';