use sql_practice_database;
create table Employee(
	Emp_id int not null,
    Emp_name varchar(45) null,
    Emp_age int null,
    Emp_desgination varchar(45) null,
    Emp_DOB varchar(45) null,
    Emp_city varchar(45) null,
    Emp_salary varchar(45) null,
    primary key(Emp_id)
); 

select * from employee;
select emp_id,emp_name,emp_age,emp_city,emp_dob from employee;
select * from employee where emp_salary>=2200000;
select distinct emp_city from employee;                  ## Distinct is used to remove the double/copy values
select count(distinct emp_city) from employee;           ## count is the function, so use Distinct into the count function
select count(*) from employee where emp_salary=2500000;  ## This line of code is used to find the number of employee having salary equal to 2500000

select * from employee limit 2;                          ## limit is used to print the top list elements from the table



############################################################################################ TWO WAY's TO FIND MAX SALARY #######################################################################
select * from employee where emp_salary=(select max(emp_salary) from employee);
select * from employee order by emp_salary desc limit 1;



############################################################################################ RANDOM FUNCTION ####################################################################################

select * from employee where emp_salary>2200000 order by rand(); 


############################################################################################# IN OPERATION ######################################################################################

select * from employee where emp_id in(1,3);

############################################################################################# DATE OPERATION ####################################################################################

select * from employee where emp_dob > '06-08-2001';


############################################################################################## NULL OPERATION ###################################################################################

select * from employee where Emp_salary is null;

############################################################################################## UPDATE OPERATION #################################################################################

update employee set emp_salary = 28000000 where emp_id=1;
select * from employee;


############################################################################################## LIKE OPERATION ####################################################################################

select * from employee where emp_name like 'N%';          ## This line of code will print all the name of the employee whose start from letter 'N'
 
select * from employee where emp_name like '%r';          ## This line of code will print all the name of the employee whose end with letter 'R'


############################################################################################## MULTIPLE ORDERS ###################################################################################

select * from employee order by emp_desgination asc, emp_salary desc;                    #### Very important line of code

Insert into Employee(Emp_id,Emp_name,Emp_age,Emp_desgination,Emp_DOB,Emp_city,Emp_salary) values(08,'Kumar',21,'Data Analysis','28-09-2001','Garhwa',2500000);

Insert into Employee
	(Emp_id,Emp_name,Emp_age,Emp_desgination,Emp_DOB,Emp_city,Emp_salary)
Values
	(01,'Nishant Kumar',21,'Data Analysis','28-09-2001','Garhwa',2500000),
    (02,'Ankit Nehra',20,'Marketing','08-06-2002','Rewari',2300000),
    (03,'Priyanshu Choudhary',22,'On Ground','06-04-2001','Bulandshahr',2100000),
    (04,'Nishant Kumar',21,'Data Analysis','28-09-2001','Garhwa',2500000),
    (05,'Ankit Nehra',20,'Marketing','08-06-2002','Rewari',2300000),
    (06,'Priyanshu Choudhary',22,'On Ground','06-04-2001','Bulandshahr',2100000)