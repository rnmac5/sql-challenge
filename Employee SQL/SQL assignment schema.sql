SQL 2

DROP TABLE departments
DROP TABLE dept_emp
DROP TABLE dept_manager
DROP TABLE employees
DROP TABLE salaries
DROP TABLE titles

-- Create table and view column datatypes
--WORKING
CREATE TABLE departments (
    dept_no VARCHAR,
    dept_name VARCHAR,
	PRIMARY KEY(dept_no)
);

SELECT FROM * departments

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
    PRIMARY KEY (emp_no)
);

SELECT FROM * employees

--add keys at the end
--FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)


CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
    PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp
--need to add back in keys
--FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
--FOREIGN KEY(emp_no) REFERENCES employees(emp_no),


CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT,
    PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager
--need to add back in keys
--FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--FOREIGN KEY (emp_no) REFERENCES employees (emp_no),



CREATE TABLE salaries (
	emp_no INT,
	salary INT,
    PRIMARY KEY (emp_no)	
);

SELECT * FROM salaries
--FOREIGN KEY (emp_no) REFERENCES employees (emp_no)


CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR,
    PRIMARY KEY (title_id)	
);

SELECT * FROM titles


--ADD IN THE REST OF THE KEYS

--employee keys
ALTER TABLE employees
ADD FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)

--dept_emp keyes
ALTER TABLE dept_emp
ADD FOREIGN KEY(dept_no) REFERENCES departments(dept_no)

ALTER TABLE dept_emp
ADD FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

--dept_manager keyes
ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no) REFERENCES departments (dept_no)

ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

--salaries keyes

ALTER TABLE salaries
ADD FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

