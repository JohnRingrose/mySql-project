 /*Authors:			John Ringrose	and 	Garrett	Ryan	   
  Student No: 	    x19112688	/	x20258496	   
  File Name: 	RetailTrainingDDL.sql  
  Date: 	20/11/2021				   
  DML for Advanced Database project CA1	 
  Industry is option 6 - Retail		   
  Business area is option 8 - Training */
DROP DATABASE  IF EXISTS RetailTraining;
CREATE DATABASE RetailTraining;
use RetailTraining;
CREATE TABLE Course(
courseID INT NOT NULL AUTO_INCREMENT,
course_title VARCHAR(25),
courseDescription varchar(100),
courseFee DECIMAL(5,2),

PRIMARY KEY (courseID)

);

CREATE TABLE teacher(
teacherID INT NOT NULL AUTO_INCREMENT,
firstName VARCHAR(25),
surname VARCHAR(25),
addressLineOne VARCHAR(50),
addressLineTwo VARCHAR(100),
eircode VARCHAR(7),
dob DATE,
courseID INT,
courseTitle VARCHAR(50),
PRIMARY KEY (teacherID ),
FOREIGN KEY (courseID) REFERENCES Course (courseID)

);

CREATE TABLE Student(
studentID INT NOT NULL AUTO_INCREMENT,
firstName VARCHAR(25),
surname VARCHAR(25),
addressLineOne VARCHAR(50),
addressLineTwo VARCHAR(100),
eircode VARCHAR(7),
dob DATE,
courseID INT,
courseTitle VARCHAR(25),
feesPaid DECIMAL,

PRIMARY KEY (studentID),
FOREIGN KEY (courseID) REFERENCES Course (courseID)

);

CREATE TABLE Results(
resultID INT NOT NULL AUTO_INCREMENT,
studentID INT,
studentName VARCHAR(50),
courseID INT,
courseTitle VARCHAR(25),
courseResults Decimal,

PRIMARY KEY (resultID),
FOREIGN KEY (courseID) REFERENCES Course (courseID),
FOREIGN KEY (studentID) REFERENCES Student (studentID)

);

CREATE TABLE Payment(
paymentID INT NOT NULL AUTO_INCREMENT,
studentID INT,
studentName VARCHAR(50),
paymentMethod VARCHAR(50),
paymentCost DECIMAL,
paymentDate DATE,
PRIMARY KEY (paymentID),
FOREIGN KEY (studentID) REFERENCES Student (studentID)

)


