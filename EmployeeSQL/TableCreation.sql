DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE departments(
	dept_no VARCHAR(30),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR(30),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR (1),
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(30),
	FOREIGN KEY (emp_no)
	REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no)
	REFERENCES departments (dept_no)
);

CREATE TABLE titles(
    title_id VARCHAR(30),
    title VARCHAR(30),
    PRIMARY KEY(title_id)
);

CREATE TABLE salaries(
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no)
    REFERENCES employees (emp_no)
);

CREATE TABLE dept_manager(
    dept_no VARCHAR(30),
    emp_no INT,
    FOREIGN KEY (dept_no)
    REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no)
    REFERENCES employees (emp_no)
);


-- SELECT * FROM departments;