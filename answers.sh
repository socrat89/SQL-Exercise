SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Age > 30 AND Gender = "F";
SELECT Points FROM students WHERE Name="Alex";
INSERT INTO students (name,Age,Gender,Points) VALUES ("Socrat",32,"M",600);
UPDATE students SET points=(points+100) WHERE name="Basma";
UPDATE students SET points=(points-1) WHERE name="Alex";