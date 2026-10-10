/*
Repository: 2.00-MySQL-Database-Notes
Topic: KodNest EMP, DEPT and J_GRADE sample tables
Purpose: Create and populate the sample tables used by many exercises.
Target: MySQL 8.0+
*/

CREATE DATABASE IF NOT EXISTS kodnest_sql_practice;
USE kodnest_sql_practice;

DROP TABLE IF EXISTS emp;
DROP TABLE IF EXISTS dept;
DROP TABLE IF EXISTS j_grade;

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    f_name VARCHAR(40) NOT NULL,
    l_name VARCHAR(40) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(30),
    salary DECIMAL(10,2),
    commission_pct DECIMAL(5,2) NULL,
    manager_id INT NULL,
    dept_id INT NULL
);

CREATE TABLE dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(60) NOT NULL,
    manager_id INT NULL,
    loc_id INT
);

CREATE TABLE j_grade (
    grade CHAR(1) PRIMARY KEY,
    low_sal INT,
    high_sal INT
);

INSERT INTO emp
(emp_id, f_name, l_name, email, phone_number, hire_date, job_id,
 salary, commission_pct, manager_id, dept_id)
VALUES
(1, 'Akash', 'Pandey', 'akash@gmail.com', '9997766', '2012-03-29', 'AD_PRES', 34000, NULL, NULL, 21),
(2, 'Prabhakaran', 'Ganeshan', 'pk@gmail.com', '77665522', '2012-05-25', 'AD_VP', 45000, NULL, 100, 22),
(3, 'DEEP', 'Nair', 'deep@gmail.com', '876297', '2012-04-19', 'AD_VP', 55000, 0.50, 101, 24),
(4, 'Ashwin', 'K', 'ash@gmail.com', '66554433', '2011-02-27', 'IT_PROG', 36000, 0.75, NULL, 110),
(5, 'John', 'Williams', 'sfda@gmail.com', '7456465', '2010-12-15', 'IT_PROG', 18000, 1.50, 110, 25),
(7, 'Shashi', 'Raj', 'Sac@gmail.com', '9575673', '2010-08-25', 'ST_MAN', 85000, 1.20, NULL, 22),
(8, 'Andy', 'J', 'And@gmail.com', '8579452', '2012-08-28', 'ST_CLERK', 28500, 0.90, NULL, 22),
(9, 'Daniel', 'King', 'sas@gmail.com', '5423424', '2010-06-24', 'ST_CLERK', 12000, 1.20, 117, 23),
(10, 'Adam', 'Sam', 'adam@gmail.com', '325674', '2007-04-16', 'ST_CLERK', 53000, 1.20, 196, 110),
(11, 'Meghana', 'Devraj', 'Meg@gmail.com', '3453424', '2008-10-25', 'ST_CLERK', 53000, 1.20, 165, 24),
(12, 'Madavan', 'Manish', 'mad@gmail.com', '4353213', '2008-12-30', 'SA_MAN', 25000, 0.30, 198, 23),
(13, 'Braven', 'Bhupathi', 'Brav@gmail.com', '12342231', '2008-09-27', 'SA_REP', 45500, 0.20, 114, 22),
(14, 'Mamatha', 'T', 'Mam@gmail.com', '53434334', '2010-07-25', 'SA_REP', 46000, 0.20, NULL, 23),
(15, 'Savitha', 'Singh', 'savi@gmail.com', '3443333', '2010-02-23', 'SA_REP', 12000, 0.15, NULL, 24),
(16, 'Mrudul', 'Kumar', 'mru@gmail.com', '322378445', '2010-04-30', 'AD_ASST', 19500, 1.20, NULL, 23),
(17, 'Pankaj', 'patel', 'pap@gmail.com', '322378445', '2010-04-23', 'MD_MAN', 39500, 1.20, NULL, 22),
(18, 'Janardhan', 'Tohn', 'Tohn@gmail.com', '322378445', '2011-05-28', 'MD_REP', 29500, 1.20, NULL, 22),
(19, 'Sardhar', 'L', 'Sar@gmail.com', '322378445', '2010-04-29', 'AC_MGR', 29500, 1.20, NULL, 110),
(20, 'Jinnath', 'Whala', 'jin@gmail.com', '322378445', '2010-04-30', 'AC_ACCOUNT', 9500, 1.20, NULL, 110);

INSERT INTO dept (dept_id, dept_name, manager_id, loc_id) VALUES
(20, 'Admin', 300, 2100),
(21, 'Marketing', 301, 2200),
(22, 'Shipping', 302, 2300),
(23, 'IT', 303, 2400),
(24, 'Sales', 304, 2500),
(25, 'Executive', 305, 2600),
(110, 'Acc', 306, 2700),
(190, 'Contracting', NULL, 2800),
(26, 'Admin', 307, 2900);

INSERT INTO j_grade (grade, low_sal, high_sal) VALUES
('A', 2000, 60000),
('B', 9001, 19000),
('D', 1001, 25000),
('F', 25001, 35000),
('H', 35001, 89000),
('I', 45001, 99000),
('J', 55001, 199000);

SELECT COUNT(*) AS emp_rows FROM emp;
SELECT COUNT(*) AS dept_rows FROM dept;
SELECT COUNT(*) AS grade_rows FROM j_grade;
