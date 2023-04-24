# sql-challenge Module 9 Challenge
## Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Data Modeling
After inspecting the Starter_Code CSV files provided (located in the "CSV data files" folder), I created an Entity Relationship Diagram of the tables with QuickDBD. https://www.quickdatabasediagrams.com/

There were 6 total tables created: 
- departments
- titles
- employees
- salaries
- dept_emp
- dept_manager

The ERD image file is located in the Entity Relationship Diagram folder and is called "ERD Image file.png"

![ERD](https://github.com/kirbyjudd/sql-challenge/blob/main/EmployeeSQL/Entity%20Relationship%20Diagram/ERD%20Image%20file.png?raw=true)

I also included the Diagram Documentation and QuickDBD text file in the Entity Relationship Diagram folder.

## Data Engineering
The table schema was created for each of the six CSV files, specifying the data types, primary keys, foreign keys, and composite keys were created.

The tables had to be created in the correct order so that the foreign keys could be referenced. Also it had to be imported in the same correct order when importing the CSV files into the SQL tables.

The table schema is located in the "SQL Files" folder and then in the "Table schemata" folder. 

I included two table schematas. the "My table schemata.sql" which is the table schema I created manually and the "QuickDBD table schemata export.sql" which is the table schema I exported form the QuickDBD ERD. I tested both schema and they succesfully created the tables in SQL. 

## Data Analysis
For the data anlaysis portion, I performed 8 different queries that included:

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

The queries were succesfully completed and are located in the "SQL files" folder and the sql file is titled "Queries.sql".
