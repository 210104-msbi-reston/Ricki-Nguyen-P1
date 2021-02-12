# Device Manufacturer Database

## Project Description
The project goal was to design a relational database management system that contains product information and keeps track of products as it moves through the business channels.


## Technologies Used
* Microsoft SQL Server Management Studio 18

## Features
List of Features
* Normalized database to reduce redundancy
* Transaction Log to trace the movement and location of individual products from the company to customers
* Return Log to trace the movement and location of individual products from customers to the company


To-do list:
* Incorporate all stored procedures into a single stored procedures
* Create a trigger that automatically inserts new records as the inventory tables update


## Getting Started
Requirements
Microsoft SQL Server Management Studio 

Steps to pulling repo to a directory
1. Create a directory that will store the project data
2. Locate that directory in Git Bash
3. Type git init and press Enter
4. Type git pull https://github.com/210104-msbi-reston/Ricki-Nguyen-P1.git
5. Open Microsoft SQL Server Management Studio
6. Go to File in the Tool Bar
7. Open a File
8. Select all the SQL scripts located in the directory
9. Execute all the SQL Scripts

## Usage
Stored Procedures
* proc_updatePLogCPToSeller
* proc_updatePLogDistToSDist
* proc_updatePLogPHToDist
* proc_updatePLogSDistToCP
* proc_updateRLogCPToSDist
* proc_updateRLogDistToPH
* proc_updateRLogSDistToDist
* proc_updateRLogSellerToCP

Functions
* func_calculateCPToSellerPrice
* func_calculateDistToSDistPrice
* func_calculatePHToDistribPrice
* func_calculateSDistToCPPrice

Views
* view_ProductReturnHistory
* view_ProductTransferHistory


## License
This project uses the following license:
* [SQL Server Management Studio](https://docs.microsoft.com/en-us/legal/sql/sql-server-management-studio-license-terms)
