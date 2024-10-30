SELECT SUM(bill_total) AS 'Income' FROM restbill;
SELECT SUM(bill_total) AS 'Feb Income' FROM restbill  WHERE bill_date  LIKE '1602%';
SELECT AVG(bill_total) AS 'Average bill amount' FROM restbill; 
SELECT MIN(no_of_seats) AS 'MAX', MIN(no_of_seats) AS 'Max', AVG(no_of_seats) AS 'Avg' FROM restrest_table;
SELECT DISTINCT COUNT(headwaiter) AS 'Table Served' FROM reststaff WHERE staff_no = 2 OR staff_no = 4;