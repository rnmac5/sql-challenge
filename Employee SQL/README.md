# sql-challenge

###What was done:
In this assignment I created tables, imported in information and then answered queries off of the information within the tables. I use pgAdmin 4 to make the tables and to run the SQL code to obtain the information from.

##SQL assignment schema
The first thing I did was make tables to import information into. Once that was done, I imported the data from each corresponding .csv file. I was able to create primary keys when running my inital code, but was not able to add my foreign keys without an error. Because of this, I wrote in notes for myself to add in these keys after all the tables were made. I achieved this by using the command "ALTER TABLE". After that I was able to reference the tables that had the same keys and I was able to run the code this way.

##Data Analysis SQL
For these questions I used the "SELECT" command to pull components of the tables into a new table to answer specific questions.

--Q1.List the employee number, last name, first name, sex, and salary of each employee.
    -For this first question I referenced to the two tables "employees" and "salaries". I was then able to join the two tables on their common column "emp_no" to get my final result.

--Q2.List the first name, last name, and hire date for the employees who were hired in 1986.
    -No joins were needed for this question as all the of the criteria were in one table "employees". After choosing the columns desired, I used the "BETWEEN" command to find the employees in the year 1986.
 
--Q3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
    -This questions required two joins. The tables "departments", "dept_manager", and "employees" were needed to find all the information needed. "Departments" and "dept_manager" were joined on their common column "dept_no", while employees and dept_manager were joined on "emp_no".
    
--Q4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
    -Once again, I did two joins on this question. This time using the tables "departments", "employees", and "dept_emp". The joins are in "employees" and "dept_emp" on "emp_no", and in "departments" and "dept_emp" on "dept_no".
    
--Q5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
    -Similar to question two, no joins were needed here as all the information was on the table "employees". But unlike that question, I used the command "LIKE" to find the name Hercules and 'B%' to find the name and the last name starting with the letter B.
    
--Q6.List each employee in the Sales department, including their employee number, last name, and first name.
    -This quetion also requires multiple joins but because we are looking in one department we need a new command. So first we join "employees" and "dept_emp" on "emp_no", and "departments" and dept_emp on "dept_no". But to find the employees in the sales department I used a "WHERE" command to pull from the "dept_name" in "departments".
    
--Q7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
    -Similar to question six, we need to pull from "departments.dept_name" but this time we have two departments to find! The joins will be the same but our "WHERE" command will now be followed by a "OR" command to pull in both departments.
    
--Q8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
    -Our final question is the most unique of all. We first need to count all the last names as a frequency from the table "employees". Then we need to group the last names and put them in descending order.
 
