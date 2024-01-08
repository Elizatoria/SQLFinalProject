/* Create Final Project Database */
-- USE master
-- GO
-- CREATE DATABASE FinalProject

/* Use Microsoft SQL Server Management Studio to add CSV Files to Database */
USE FinalProject
GO

ALTER TABLE Orders
ALTER COLUMN Phone NVARCHAR(50) NOT NULL FOREIGN KEY REFERENCES Customer(Phone)