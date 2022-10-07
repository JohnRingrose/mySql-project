/*Garrett Ryan   John Ringrose
x19112688  x20258496	


For our business we need to know where our students live and does this reflect on the passing rate.
 So we did a query to see what the pass rate was for students who live in Dublin
*/
use retailtraining;
select DISTINCT Student.studentID,Student.firstName,Student.surname,Student.courseID,Student.courseTitle,Results.courseResults
 FROM Student
INNER JOIN Results ON Student.courseID = Results.courseID where (Student.addressLineTwo = 'Dublin' and Results.courseResults > 40)

GROUP By Student.studentID