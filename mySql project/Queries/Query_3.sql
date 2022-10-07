 /*Query 3
 Created by		John Ringrose	 Garrett	Ryan  
  Student No: 	    x19112688	   /  x20258496
  File Name: 	RetailTrainingDDL.sql  
  Date: 	20/11/2021				   
   for Advanced Database project CA1	 
 Query 3 - We use this query to keep track of how the students exam results have been going, to see who is passing and who is not
 */
USE retailtraining; 

SELECT results.studentname, 
       results.courseresults 
FROM   results 
ORDER  BY courseresults DESC;