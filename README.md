Employee Database: A Mystery in Two Parts

There are three important directories within this repo.
    
## 1. Profiling
This directory contains a jupyter notebook with pandas code used to explore
the raw CSVs provided in order to find evidence of relationships between 
the differen domains in the data. These insights were used to create the ideal 
data model with the correct natural key and foreign key constraints. The file ERD.txt contains the syntax used to create the ERD diagram using the quickdatabasediagrams tool.

## 2. data
This directory just contains the six data files used for this project.

## 3. EmployeeSQL
This directory contains all the scripts and analyses relating to this assignment.

### employee_db.sql: 
- contains DDL for all the tables. 
- script can be run in its entirety and it will either create the database from scratch or delete it and remake it again.

### load.sql
- this script loads data from directory to the employee_db schema
- Before running, configure directory in the copy statements to match where the raw data lives in your environment

### analysis.sql
- this script contains sql queries for each of the eight
analyses in the assignment.

### bonus_analysis.ipynb
- This script uses sql alchemy to connect to the employee db schema and pull data for visualization.
- a password is required to connect. It is imported from a configuration stored in the local directory. 
- - configuration file was not pushed to github.

### ERD.png
- this is an image of the ERD diagram created using the quickdatabasediagrams tool.




