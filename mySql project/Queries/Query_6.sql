/*Created by		John Ringrose	 Garrett Ryan  
Student No: 	    x19112688	/	x20258496	
Our business needs to know which of our customer/students pay in cash, we don't like accepting cash because of the securirty issue.
But if offering the serice means we get mmore customers, then we will continue to offer it. Thence why we have this query so we know how many
students are paying by cash. 
*/
use retailtraining;
SELECT DISTINCT Student.studentID,Student.firstName,Student.surname,Payment.paymentMethod
 FROM Student
INNER JOIN Payment on Student.studentID = Payment.studentID where Payment.paymentMethod = 'Cash' and Student.feesPaid = '0'
Group by Student.studentID