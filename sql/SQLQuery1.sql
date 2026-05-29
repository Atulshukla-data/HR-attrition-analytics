Create Database HR_analytics 
Use HR_analytics   

Select * from employee_attrition 

-- How many employees exist or what are the total employees number 
Select count(*) as totalemployees
from employee_attrition

-- What is the attrition count  
select Attrition, COUNT(*) as Employeecount
from employee_attrition
group by Attrition

-- Department analysis 
select Department, COUNT(*) as employeecount
from employee_attrition
group by Department
order by employeecount desc

-- Attrition by department 
Select Department, Attrition, count(*) as employeecount 
from employee_attrition 
group by Department, Attrition 
order by Department 

-- Average salary 
select Avg(MonthlyIncome) as AverageSalary
from employee_attrition

-- over time analysis does overtime increase attrition? 
Select 
    case
        when OverTime = 1 then 'yes'
         when OverTime= 0 then 'no'
         end as overtime,
      
     case
         when Attrition = 1 then 'yes'
         when Attrition= 0 then 'no'
         end as Attrition,
     count(*) as employeecount
from employee_attrition 
group by OverTime,attrition 

--Top job Roles
Select jobrole, count(*) as employeecount 
from employee_attrition 
group by jobrole 
order by employeecount desc 

--Salary analysis 
select 
        case 
            when Attrition = 1 then 'yes'
            when Attrition = 0 then 'no'
            end as attrition,
avg(monthlyincome) as avg_salary
from employee_attrition
group by attrition

---Employees who have lower average salary they are leaving the company ---