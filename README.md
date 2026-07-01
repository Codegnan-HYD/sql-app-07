# sql-app-07
SQL application to implement one-to-one association (optional + unidirectional)

## Problem Statement

### Employees & Parking Spots

#### Data:
* Employee Data: First Name and Last Name.
* Parking Spot Data: Spot Number and Basement Level.

#### Rules:
* An employee may or may not be assigned a parking spot.
* A parking spot is either assigned to exactly one employee or not assigned to any employee.
* Company admin needs to see whether employees are either assigned or not assigned parking spots.

#### Create ER Diagrams to show: 
1. Conceptual Data Model
2. Logical Data Model
3. Physical Data Model

#### Write SQL Queries to: 
1. create tables
2. insert records for 15 parking spots and 15 employees
	- there are 3 basement levels
	- there are 5 parking spots at every basement level
	- there are 3 employees who are assigned parking spots at basement level 1
	- there are 3 employees who are assigned parking spots at basement level 2
	- there are 2 employees who are assigned parking spots at basement level 3
	- there are 7 employees who are not assigned parking spots.
3. find employees with parking spots
4. get all employees including those without parking spots
5. get all parking spots including those unassigned
6. get all employees and all parking spots
7. find employees without parking spots
8. find unassigned parking spots
9. find employees with parking spots at a particular basement level
10. find unassigned parking spots at particular basement level

## Getting Started
Follow these steps to get a local repository up and running:

1. Clone the repository on local machine:
`git clone https://github.com/Codegnan-HYD/sql-app-07.git`

2. Create a new branch for your work:
`git branch <your-branch-name>`

3. Switch to your branch:
`git checkout <your-branch-name>`

## Contributing
1. Create files and save the ER Diagrams with Conceptual Data Model:
`ERD-Conceptual.png`

2. Create a file and save the ER Diagram with Logical Data Model:
`ERD-Logical.png`

3. Create a file and save the ER Diagram with Physical Data Model:
`ERD-Physical.png`

4. Create a file and save all the DDL SQL statements:
`DDL.sql`

5. Create a file and save all the DML SQL statements:
`DML.sql`

6. Create a file and save all the DQL SQL statements:
`DQL.sql`

7. Add all the files to the staging area:
<br>`git add ERD-Conceptual.png`
<br>`git add ERD-Logical.png`
<br>`git add ERD-Physical.png`
<br>`git add DDL.sql`
<br>`git add DML.sql`
<br>`git add DQL.sql`

8. Commit your changes:
`git commit -m <your commit message>`

9. Push your branch to the remote repository:
`git push https://github.com/Codegnan-HYD/sql-app-07.git <your-branch-name>`

## Prerequisites
1. draw.io 
2. MySQL Database Server 9.7.0
3. MySQL Workbench 8.0.47