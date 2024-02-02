# SQLFinalProject
SQL/ETL Final Project

Database Diagram
https://app.quickdatabasediagrams.com/#/d/T10lf8

----------

Used https://cobbl.io/ to make the Customer.csv File.
__Columns__
Phone (PK, nvarchar(50), not null)
First_Name (nvarchar(50), not null)
Last_Name (nvarchar(50), not null)
Email (nvarchar(50), not null)
Street (nvarchar(50), not null)
City (nvarchar(50), not null)
State_Abbr (nvarchar(50), not null)
Zip_Code (int, not null)

----------

Used https://www.mockaroo.com/ to make the Orders.csv File.
__Columns__
Order_ID (PK, smallint, not null)
Phone (FK, nvarchar(50), not null)
Fandom (nvarchar(max), not null)
Type_of_Artwork (nvarchar(50), not null)
Price (money, not null)
Order_Status (bit, not null)

----------

The goal of this project was to created a Database Infrastructure using SQL and Talend for a Startup Company. I chose an artist drawing fanart and making plushies. There are two tables in the Database, one for the Customer Contact Information and the other for the Order Imformation. I used the Phone Number as the Customer ID to connect the information of the two tables.

I made a Stored Procedure of the items not yet made. I included the Phone Number, so it could be used to look up the Mailing Address when it is complete. The name of the person was included, so the artist knows who it is for, and naturally, the fandom and what kind of art was requested.

I made a View of the already Finished Products that probably were already shipped, so User could manipulate data and calculate the total profits made for tax purposes. Phone Number was included in case the information from Customer needed to be called. Fandom and Type of Artwork was included in case the user wanted to see what was more popular. Natually, Price was included to add up the profits.

On the update page, there is an update formula to update the Order Status from false to true. Then, there is a Function to look up the Customer information for that order, so that it could be shipped to the person. The Customer could be called, texted, or emailed to tell them that the item is coming.