--Create Table Schema
--departments
CREATE TABLE departments (
    dept_no VARCHAR(15) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(60) NOT NULL
);

--titles
CREATE TABLE titles (
    title_id VARCHAR(60) PRIMARY KEY NOT NULL,
    title VARCHAR(60) NOT NULL
);

--employees
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(60) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    sex VARCHAR(15) NOT NULL,
    hire_date DATE NOT NULL
);

--salaries
CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary INTEGER NOT NULL
);

--dept_emp
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no VARCHAR(60) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

--dept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR(60) NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);