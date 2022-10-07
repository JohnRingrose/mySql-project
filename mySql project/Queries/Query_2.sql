 /*Query 2
 Authors:			John Ringrose  	Garrett	Ryan	   
  Student No: 	    x19112688	/ x20258496	   
  File Name: 	RetailTrainingDDL.sql  
  Date: 	20/11/2021			
Advanced Database project CA1
 Query 2 - This query is for us to find out what teacher is with which student. Incase we have any absences, 
 someones running late or any general issues with the student teacher relationship in the class */
USE retailtraining; 

SELECT Concat(student.firstname, ' ', student.surname) AS "Student's Name", 
       Concat(teacher.firstname, ' ', teacher.surname) AS "Teacher's Name" 
FROM   student 
       JOIN teacher 
         ON student.courseid = teacher.courseid;     