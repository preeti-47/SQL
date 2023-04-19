-------------------------------------create database
CREATE table EMPLOYEE
(emp_id number(6,0),
emp_name varchar(20),
dept_id int (6,0))

CREATE TABLE DEPARTMENT
             (dep_id number(6,0),
             dep_name varchar (20))
            
CREATE table PROJECT
    (project_id number (7,0),
     project_name varchar (20),
     team_member_id number (6,0))
     
 CREATE TABLE MANAGER
     (manager_id number (7,0),
      manager_name varchar(20),
      dept_id number (6,0))
      
      
INSERT INTO EMPLOYEE ( emp_id,emp_name,dept_id)
   VALUES ('E1','Rahul','D1'),('E2','MANOJ','D2'),
    ('E3','James','D3'),('E4','Micahel','D4'),('E5','harry','D5'), ('E6','jamie','D10')
    
 INSERT INTO DEPARTMENT(dep_id, dep_name)
 VALUES ('D1','IT'),('D2','finance'),('D3','hr'),('D4','admin')
 
 INSERT INTO PROJECT (project_id,project_name,team_member_id)
 VALUES ('P1','data migration','E1'), ('P2','data migration','E2'), ('P3','data migration','M3'),('P4','ETL TOOL','E1'),('P5','ETL TOOL','MY')
 
 INSERT INTO MANAGER(manager_id,manager_name,dept_id)
 VALUES ('M1','Prem','D3'),('M2','Shripadh','D4'),('M3','Nick','D1'),('M4','cory','D1')
 

     
    