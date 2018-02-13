--create user payroll identified by Payroll;
--grant dba to Payroll;
--conn Payroll/Payroll;




--Table no:01--Employee table of payroll database;
create table employee(EMPID VARCHAR2(10), EMPNAME VARCHAR2(50),GENDER VARCHAR2(10),STATUS VARCHAR2(20), DOB DATE,DOJ DATE,ADDRESS VARCHAR2(250),PHONE VARCHAR2(12),EMAIL VARCHAR2(30),PASSWORD VARCHAR2(30),SALARY NUMBER(12,2),WORKPLACE VARCHAR2(100),DEPTNAME VARCHAR2(50),DESNNAME VARCHAR2(50),ACTIVE VARCHAR2(10),MGRID VARCHAR2(20),TA NUMBER(10,2),DA NUMBER(10,2),HRA NUMBER(10,2),OTHER NUMBER(10,2),primary key(empid,email));

 
-- Table no:01--attendance table of payroll database
 create table attendance(EMPID VARCHAR2(20) primary key, MONTH NUMBER(2),YEAR NUMBER(4),PRESENT NUMBER(2),ABSENT NUMBER(2));
 
 
---table no:03 leave table of payroll database
create table leave(EMPID VARCHAR2(10),LEAVE_TYPE VARCHAR2(50),LEAVE_DATE DATE,STATUS VARCHAR2(20),TOTAL_LEAVE NUMBER(38),TOTAL_TAKEN NUMBER(38),LEAVE_DATE_TO NUMBER(38));



--table no:04 transfer table of payroll database
create table transfer(EMPID VARCHAR2(10),PLACE VARCHAR2(50),DATEFROM DATE,STATUS VARCHAR2(20));


---table no:05 department table of payroll database
create table department(DEPTCODE VARCHAR2(20),DEPTNAME VARCHAR2(50),DEPTLOCATION VARCHAR2(50));
 
 
--table no:06 deductions table of payroll database
create table deductions(YEAR NUMBER(5),MONTH NUMBER(2),EMPID VARCHAR2(20),HOUSE_RENT NUMBER(10,2),LOAN NUMBER(10,2),INCOME_TAX NUMBER(10,2),GPF NUMBER(10,2),
 PLI NUMBER(10,2),OTHERS NUMBER(10,2));
 
 
--table no:-07 designation table of payroll database 
 create table designation(DEPTID VARCHAR2(50),DESNID VARCHAR2(20),DESN_NAME VARCHAR2(100),GRADE VARCHAR2(2),GRADE_DESC VARCHAR2(20));

 
--table no:08 login table of payroll database in this table please insert uname and password for first enter to admin page.
create table login(UNAME VARCHAR2(20),PASSWORD VARCHAR2(20));

 