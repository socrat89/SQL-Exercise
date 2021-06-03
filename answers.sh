SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Age > 30 AND Gender = "F";# femal whose above 30 the result is jana
SELECT Name FROM students WHERE Age =30 AND Gender = "F";# femal whose age is 30 the Result Non
SELECT Points FROM students WHERE Name="Alex";
INSERT INTO students (name,Age,Gender,Points) VALUES ("Socrat",32,"M",600);
UPDATE students SET points=(points+100) WHERE name="Basma";
UPDATE students SET points=(points-1) WHERE name="Alex";


# ///////////// Creating Table \\\\\\\\\\\\\\
CREATE TABLE "graduates" (
"ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
"Name" TEXT NOT Null UNIQUE,
"Age" INTEGER,
"Gender" TEXT,
"Points" INTEGER,
"Graduation" TEXT 
);
# /////////////// Copy data from students to graduates \\\\\\\\\\\\\\
INSERT INTO  graduates (Id,Name,Age,Gender,Points)
SELECT Id,Name,Age,Gender,Points FROM students WHERE name="Layal";
UPDATE graduates SET Graduation = '08/09/2018' WHERE name="Layal";#/// ADD graduation date
DELETE FROM students WHERE name = "Layal"; #// Remove Layal's record from students
SELECT * FROM graduates;#// checking 
SELECT * FROM students;#// checking 

#/////////// Join \\\\\\\\\\\\\\
#1
SELECT employees.name, employees.Company, companies.Date
FROM employees INNER JOIN companies ON employees.Company = companies.name;

#2
SELECT employees.Name FROM employees
INNER JOIN companies ON employees.Company = companies.name AND Date<2000;

#3
SELECT companies.name
FROM employees
INNER JOIN companies ON employees.Company = companies.Name 
WHERE employees.Role="Graphic Designer";

# /////////// Count & Filter \\\\\\\\\\\\\\
#1
SELECT Name,MAX(Points) FROM students;
#2
SELECT AVG(Points) FROM students;
#3
SELECT * FROM students WHERE Points=500;
#4
SELECT Name FROM students WHERE name LIKE "%s%";
#5
SELECT Name,Points FROM students ORDER BY points DESC;

