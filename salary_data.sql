use sql_practice_database;
create table salary_data(
	emp_age int null,
    emp_gender varchar(45) null,
    emp_education varchar(45) null,
    emp_jobtitle varchar(45) not null,
    emp_yearofexperience int null,
    emp_salary int null,
    primary key(emp_jobtitle)
);
select * from salary_data;

####################################################################################### Getting the Gender #############################################################################################################

select count(*) as total_no_of_employee,emp_gender 
from salary_data 
group by emp_gender
order by emp_gender asc;

####################################################################################### Getting the Education ###########################################################################################################

select count(*) as No_of_Employee,emp_education as Educational_Qualification
from salary_data
group by emp_education
order by emp_education asc;

####################################################################################### Getting the Salary ###############################################################################################################

select count(*) as NO_of_Employee,emp_salary as Employee_Total_Salary
from salary_data
group by emp_salary
order by NO_of_Employee desc;

####################################################################################### Between Function ################################################################################################################

select * from salary_data;
select * 
from salary_data
where emp_yearofexperience between 20 and 30
order by emp_yearofexperience desc;


select emp_jobtitle,emp_age,emp_gender,emp_salary
from salary_data
where emp_age between 20 and 50
order by emp_age desc;

select emp_jobtitle
from salary_data
where emp_jobtitle between 'C' and 'F';













