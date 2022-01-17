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


SQL

Activities 1

#1 Just let students investigate the data

#2
SELECT * FROM current_job_detail_csv WHERE job_title = "Tech Lead";

#3
SELECT * FROM employee_detail_csv WHERE gender = "F";

#4
SELECT * FROM employee_detail_csv WHERE name LIKE ("S%");

#5
SELECT * FROM jobs_history_csv WHERE job_title LIKE ("%Developer");

#6
SELECT laptop_id FROM laptop_detail_csv WHERE os = "Ubuntu";

#7
SELECT * FROM employee_detail_csvWHERE name LIKE ("S%") OR name LIKE ("A%");

Activities 1

#1
CREATE TABLE great_names (employee_id int PRIMARY KEY, name varchar(64));

#2
INSERT INTO great_names
	SELECT employee_id, name FROM employee_detail_csv
WHERE employee_id IN (1001, 1002, 1003, 1004, 1005);

#3
DELETE FROM great_names WHERE employee_id = 1005;

#4
ALTER TABLE great_names ADD COLUMN great_name_ind VARCHAR(1);

#5
UPDATE great_names SET great_name_ind = "Y";

#6
UPDATE great_names SET great_name_ind = "N" WHERE employee_id = 1001;

Activities 3

#1 

SELECT * FROM laptop_detail_csv ldc 
INNER JOIN current_job_detail_csv cjdc 
ON ldc.laptop_id = cjdc.laptop_id;

#2  SELECT * FROM laptop_detail_csv ldc 
INNER JOIN current_job_detail_csv cjdc 
ON ldc.laptop_id = cjdc.laptop_id 
WHERE ldc.os = "Mac"; 
#3
 SELECT * FROM current_job_detail_csv cjdc 
INNER JOIN jobs_history_csv jhc 
ON cjdc.employee_id = jhc.employee_id
WHERE jhc.job_title = "Apprentice Developer" AND cjdc.job_title = "Developer"; 
SELECT * FROM jobs_history jh
INNER JOIN jobs_history jh2
INNER JOIN employee_detail ed
ON jh.employee_id = jh2.employee_id
AND jh.Employee_ID = ed.Employee_ID
WHERE jh.job_title = "Apprentice Developer" AND jh2.job_title = "Developer";

#4
 SELECT * FROM current_job_detail_csv cjdc 
INNER JOIN jobs_history_csv jhc 
ON cjdc.employee_id = jhc.employee_id
WHERE jhc.job_title not LIKE ("%Developer") AND cjdc.job_title LIKE ("%Developer"); 
#5
 SELECT * FROM current_job_detail_csv cjdc 
INNER JOIN jobs_history_csv jhc 
ON cjdc.employee_id = jhc.employee_id
WHERE jhc.job_title != cjdc.job_title;

#6

SELECT DISTINCT cjd.employee_id, cjd.job_title FROM master23.current_job_detail cjd 
INNER JOIN master23.jobs_history jh 
ON cjd.employee_id = jh.employee_id
WHERE jh.job_title != cjd.job_title;

Activities 4

#1
SELECT job_title, MAX(salary) FROM current_job_detail_csv cjdc
GROUP BY job_title;

#2

SELECT job_title, os, COUNT(os) FROM current_job_detail_csv cjdc
INNER JOIN laptop_detail_csv ldc
ON cjdc.laptop_id  = ldc.laptop_id 
GROUP BY job_title, os;

#3

SELECT cjd.job_title, AVG(salary) FROM current_job_detail cjd 
INNER JOIN jobs_history jh 
ON cjd.employee_id = jh.employee_id 
WHERE jh.job_title = 'Apprentice Developer'
GROUP BY job_title;

#4

SELECT name
FROM employee_detail ed
INNER JOIN current_job_detail cjd 
ON cjd.employee_id = ed.Employee_ID 
ORDER BY cjd.salary DESC 
LIMIT 1;
 		




