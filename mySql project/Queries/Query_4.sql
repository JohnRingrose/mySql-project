
/*Authors:			John Ringrose	and 	Garrett	Ryan	   
  Student No: 	    x19112688	/	x20258496	   
  File Name: 	RetailTrainingDDL.sql  
  Date: 	20/11/2021
Advanced Database project CA1
Query 4 - We use this query to keep track of our prices for each course.
*/
USE retailtraining; 

SELECT teacher.surname, 
       course.course_title, 
       course.coursefee, 
       course.courseid 
FROM   course, 
       teacher 
ORDER  BY coursefee ASC; 