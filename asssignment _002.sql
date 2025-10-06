use employee;
show tables;
insert into department(department_id,department_name) values 
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'Marketing'),
(104, 'Sales'),
(105, 'Information Technology'),
(106, 'Customer Support'),
(107, 'Research & Development'),
(108, 'Administration'),
(109, 'Production'),
(110, 'Legal');

select * from department;
insert into location(location_id,location) values
(201,'mumbai'),
(202, 'Delhi'),
(203, 'Bengaluru'),
(204, 'Chennai'),
(205, 'Hyderabad'),
(206, 'Pune'),
(207, 'Kolkata'),
(208, 'Ahmedabad'),
(209, 'Jaipur'),
(210, 'Chandigarh');
insert into employees(employee_id,employee_name,gender,age,hire_date,desigination,salary,department_id,location_id) values
(101, 'Amit Sharma', 'M', 28, '2022-05-14', 'HR Executive', 35000.00, 101, 201),
(102, 'Priya Verma', 'F', 32, '2021-03-10', 'Finance Manager', 60000.00, 102, 202),
(103, 'Ravi Kumar', 'M', 26, '2023-01-20', 'Marketing Associate', 30000.00, 103, 203),
(104, 'Sneha Gupta', 'F', 29, '2020-11-01', 'Sales Executive', 40000.00, 104, 204),
(105, 'Arjun Mehta', 'M', 35, '2019-07-15', 'IT Analyst', 55000.00, 105, 205),
(106, 'Neha Singh', 'F', 27, '2023-06-05', 'Customer Support Rep', 25000.00, 106, 206),
(107, 'Karan Patel', 'M', 31, '2021-12-19', 'R&D Specialist', 65000.00, 107, 207),
(108, 'Meera Nair', 'F', 30, '2022-09-09', 'Admin Officer', 38000.00, 108, 208),
(109, 'Vikram Joshi', 'M', 33, '2020-02-25', 'Production Supervisor', 45000.00, 109, 209),
(110, 'Anita Das', 'F', 40, '2018-04-30', 'Legal Advisor', 70000.00, 110, 210);


select distinct salary from employees;
SELECT 
    Employee_ID,
    Employee_Name,
    Gender,
    Age as Employee_Age,
    Hire_Date,
    Desigination,
    Salary as Employee_Salary,
    Department_ID,
    Location_ID
FROM Employees;
select salary, hire_date from employees where salary>50000 and hire_date <'2016-01-01' ;

 insert into department(department_id,department_name) values 
 (111,'analyst');
 insert into location(location_id,location) values
 (211,'kerala');
 insert into employees(employee_id,employee_name,gender,age,hire_date,desigination,salary,department_id,location_id) values
 (111, ' Das', 'm', 40, '2018-06-30',null,  74000.00, 111, 211);
 SELECT * FROM EMPLOYEES WHERE DESIGINATION IS NULL;
 UPDATE Employees
SET Desigination = 'Data Scientist'
WHERE Desigination IS NULL ;
 set sql_safe_updates=0;
 select department_id, employee_name from employees order by department_id asc;
 select * from employees where year(hire_date)=2018 order by hire_date asc limit 5;
  SELECT SUM(E.Salary) AS Total_Finance_Salary
FROM Employees E
JOIN Department D 
    ON E.Department_ID = D.Department_ID
WHERE D.Department_Name = 'Finance';
select min(Age) as minimum_age from employees;
select location_id, max(salary) as max_salary_for_all_location
from employees group by location_id;
select desigination,avg(salary) as average_salary from employees where desigination like 'IT analyst' group by desigination;
select department_id from department having department_id<3;
select department_id, count(employee_id) as total_count
from employees
group by department_id having count(employee_id) <3;
select (location_id),avg(age) as avg_age from employees 
where gender = 'f'
group by location_id having avg(age) <30 ;
select * from department;
select * from employees;
select e.employee_name,e.desigination,d.department_name
from employees e inner join department d
on e.employee_id = d.department_id;
select d.department_name,
count(e.employee_id) as total_emp
from department d left join employees e
on d.department_id=e.department_id
group by d.department_name;
select l.location,
e.employee_name
from location l right join employees e
on l.location_id =e.location_id
order by l.location_id;

