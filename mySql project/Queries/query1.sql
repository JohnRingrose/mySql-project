 /*Authors:			John Ringrose  Garrett	Ryan	   
  Student No: 	   x19112688	x20258496	   
  File Name: 	RetailTrainingDDL.sql  
  Date: 	20/11/2021	
   Advanced Database project CA1
  Query 1 - This query is to find out who hasn't paid for their training, 
  which is obvious very important if we want to keep out business running, we need funds to pay the bills.
  */
use retailtraining;
select DISTINCT Student.studentID,Student.firstName,Student.surname,Student.courseID,Student.courseTitle,Results.courseResults
 FROM Student
INNER JOIN Results ON Student.courseID = Results.courseID where (Student.feesPaid = '1' and Results.courseResults < 40)

GROUP By Student.studentID