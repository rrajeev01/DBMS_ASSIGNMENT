-- DB Lab 1 Solution

-- PART A: DDL

CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age INT,
    Phone VARCHAR2(15)
);

CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR2(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR2(30);
ALTER TABLE Student ADD Semester INT;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

-- PART B: DML

INSERT INTO Student VALUES (101, 'Rahul', 'CSE', 22, '8721988044', 'Delhi', 4);
INSERT INTO Student VALUES (102, 'Anaya', 'ECE', 21, '9832712700', 'Kolkata', 5);
INSERT INTO Student VALUES (103, 'Neha', 'CE', 23, '9127351982', 'Jaipur', 6);
INSERT INTO Student VALUES (104, 'Muskan', 'ME', 19, '8634494275', 'Udaipur', 3);
INSERT INTO Student VALUES (105, 'Kritika', 'EE', 21, '9063792830', 'Ahmedabad', 7);



SELECT * FROM Student;
SELECT RollNo, Name FROM Student;
SELECT * FROM Student WHERE Dept = 'CSE';
SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;
UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';
UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;
DELETE FROM Student;




