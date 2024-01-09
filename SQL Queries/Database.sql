/* Create Final Project Database */
-- USE master
-- GO
-- CREATE DATABASE FinalProject

/* Used Microsoft SQL Server Management Studio to add CSV Files to Database
Used SQL to add Foreign Key */
-- USE FinalProject
-- GO
-- ALTER TABLE Orders
-- ADD CONSTRAINT FK_PersonOrder
-- FOREIGN KEY (Phone)
-- REFERENCES Customer(Phone)