----------once you create table you can modify by using  'alter' cmd not edit 😂
select *from EMPLOYEE;
SELECT * FROM DEPARTMENT;
SELECT* from MANAGER;
SELECT * from PROJECT;

-----fetch the employee name and department name they belong to
SELECT e.emp_name, d.dep_name
from EMPLOYEE e inner join DEPARTMENT d on e.dept_id = d.dep_id    ----in empolioyee table has dept_id not dep_id

-----fetch the ALL employee name and department name they belong to
----left join  = inner join + any additional record from left table (return NULL values from any column match)
SELECT e.emp_name, d.dep_name
from EMPLOYEE e LEFT join DEPARTMENT d on e.dept_id = d.dep_id      ---

----right join  = inner join + any additional record from  right table(return NULL values from any column match)
SELECT e.emp_name, d.dep_name
from EMPLOYEE e RIGHT join DEPARTMENT d on e.dept_id = d.dep_id

----fetch ALL the emp_name, their manager, their dept and their project they work on it
 select e.emp_name, d.dep_name, m.manager_name, p.project_name
 from EMPLOYEE e  left join DEPARTMENT d on e.dept_id = d.dep_id
 join MANAGER m on e.manager_id = m.manager_id    ------forget column  manager_id , need to modify the table employee table
left  JOIN PROJECT p on p.team_member_id = e.emp_id

-----FULL join 