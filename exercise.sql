-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@
-- assigments page 52
-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@


-- 1) Create a table called great_names with 2 columns name and
-- employee_id

 CREATE TABLE master32.great_names (
     EmployeeId int,
     Name varchar(255)
 );


--  2) Insert 5 employees with great names into your table (your choice*)

INSERT INTO master32.great_names (Name, EmployeeId)
 VALUES ('Cardinal11', 1),('Cardinal22', 2),('Cardinal33', 3),('Cardinal44', 4),('Cardinal55', 5);

--  3) Delete one of the employees out of your table based on their
-- employee_id


DELETE FROM master32.great_names WHERE EmployeeId = 3;

-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@
-- assigments page 77
-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@


-- 1) Return a table linking laptop_detail and current_job_detail

  CREATE TABLE master32.77 (
  	  Name varchar(255),
      LaptopDet varchar(255),
      MacUsr bit,
      CurrentJob varchar(255),
      AprDev bit,
      Dev bit
  );

  INSERT INTO master32.77 (Name, LaptopDet, MacUsr, CurrentJob, AprDev, Dev)
 VALUES ('TOMAS','Mac', TRUE, 'Developer', FALSE, TRUE),
('MAT','LINUX', FALSE, 'Developer', TRUE, FALSE),
('FRED','LINUX', TRUE, 'Developer', FALSE, TRUE),
('MARK','WINDOWS', TRUE, 'Developer', TRUE, FALSE),
('JULIET','Mac', TRUE, 'APRENDICE DEV', TRUE, TRUE);

-- 2) Return a table of only the employees that own a Mac

SELECT * FROM master32.77 
WHERE LaptopDet = 'Mac'
 
-- 3) Return a table of all the employees that were an apprentice
-- developer but are now a developer

SELECT * FROM master32.77 
WHERE AprDev = '1'

-- 4) Return a table of all the employees that weren’t a developer and
-- now are 

SELECT * FROM master32.77
WHERE Dev = '1'

-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@
-- assigments page 91
-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@


-- 1) Return a table of the max salary by job type

  CREATE TABLE master32.salary (
  	Name varchar(255),
  	Job varchar(255),
  	  Salary int,
      OS varchar(255),
      Apprendice bit
  );
  
 
 INSERT INTO master32.salary (Name, Job, Salary, OS, Apprendice)
 VALUES ('Robert','JuDev', 15000, 'MAC', 1),
  		('Carl','JuDev', 23000, 'LINUX', 1),
 		('Nelson','Developer', 40000, 'WINDOWS', 1),
 		('Fred','JuDev', 15000,'MAC', 1),
 		('Bill','Developer', 40000, 'MAC', 0),
 		('Rudolf','JuDev', 15000, 'MAC', 1),
 		('Fred','Eng', 45000, 'MAC', 0),
 		('Marika','JuDev', 15000, 'MAC', 0),
 		('Zukerberg','SmartAss', 50000, 'WINDOWS', 1);


--  1) Return a table of the max salary by job type 


SELECT job, COUNT(*)
FROM master32.salary
GROUP BY job;


-- 2) Return a table counting how many people have each OS

SELECT OS, COUNT(*)
FROM master32.salary
GROUP BY OS;

-- 3) Return a table of the average salary of staff members that have at some point been an apprentice developer

SELECT * FROM master32.salary 
WHERE Apprendice = '1'


-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@
-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@
-- <>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@<>@

 		




