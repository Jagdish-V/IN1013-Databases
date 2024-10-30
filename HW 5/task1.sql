SELECT bill_date, bill_total FROM restbill WHERE cust_name = 'Bob Crow';
SELECT DISTINCT cust_name FROM restbill WHERE cust_name LIKE '%Smith%' ORDER BY cust_name DESC;
SELECT DISTINCT cust_name FROM restbill WHERE cust_name LIKE '% C%' ORDER BY cust_name DESC;
SELECT first_name, surname From reststaff WHERE headwaiter IS NULL;
SELECT * FROM restbill WHERE bill_date LIKE '%1602%';
SELECT DISTINCT bill_date FROM restbill WHERE bill_date LIKE '15%' ORDER BY bill_date ASC;