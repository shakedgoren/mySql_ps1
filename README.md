# MySQL Database Management Script
### This project provides a PowerShell script for managing a MySQL database. It allows you to create tables, insert data, perform joins, and display query results based on user input.

# Prerequisites
* Windows operating system
* PowerShell version 5.1 or later
* MySQL Server installed and running


# Setup
1. Clone the project repository to your local machine.
2. Install the required PowerShell module by running the following command in PowerShell:
Install-Module -Name SimplySql
3. Import the required PowerShell modules in the script by adding the following lines at the beginning:
Import-Module SimplySql
Import-Module Microsoft.PowerShell.Utility
4. Run the script by executing the PowerShell script file (script.ps1) from the PowerShell console.

# Functionality
## 1. Creating Tables
The script creates two tables: DEPT and EMPLOYEES. The structure and foreign key constraints are defined in the script. You can modify the table structure as needed.
## 2. Inserting Data
The script provides functions to insert data into the DEPT and EMPLOYEES tables. You can specify the number of departments and employees to generate, and the script will randomly assign employees to departments.
## 3. Joining Tables
You can perform a join operation between the DEPT and EMPLOYEES tables using the SELECT statement. The script includes an example query that retrieves the department name, employee name, and hire date, sorted by department name and hire date.
## 4. User Input
The script prompts the user to enter a hire date parameter. Based on the input, it retrieves the join query results where the hire date is greater than the provided date. The results are displayed on the console.
