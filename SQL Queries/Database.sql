/* Create Final Project Database */
-- USE master
-- GO
-- CREATE DATABASE FinalProject

/* Used Microsoft SQL Server Management Studio to add CSV Files to Database */

/* Added Foreign Key */
-- USE FinalProject
-- GO
-- ALTER TABLE Orders
-- ADD CONSTRAINT FK_PersonOrder
-- FOREIGN KEY (Phone)
-- REFERENCES Customer(Phone)

/* Backup the Database that was just created */
-- BACKUP DATABASE FinalProject
-- TO DISK = 'C:/TMP/FinalProject.bak';