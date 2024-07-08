--create departments table
Create Table departments(
    dept_no VARCHAR(10),
    dept_name TEXT,
    primary key(dept_no)
    )
	
--create dept_emp table
Create Table dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR (10),
	primary key(emp_no,dept_no)
    )

--create dept_manager table
Create Table dept_manager(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	primary key(dept_no,emp_no),
	foreign key(dept_no,emp_no) references dept_emp(dept_no,emp_no)
    )

--create employees table
Create Table employees(
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(15) NOT NULL,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex TEXT,
	hire_date Date,
	primary key(emp_no,emp_title_id)
    )

--create salaries table
Create Table salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	primary key(emp_no)
    )

--create titles table
Create Table titles(
	title_id VARCHAR(8) NOT NULL,
	title text NOT NULL,
	primary key(title_id)
	)	