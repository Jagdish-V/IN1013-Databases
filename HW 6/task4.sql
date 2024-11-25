-- 1.

SELECT cust_name FROM restBill WHERE bill_total > 450 AND waiter_no IN (SELECT staff_no from restStaff WHERE headwaiter = 10);

-- 2.

SELECT DISTINCT first_name, surname FROM restStaff WHERE staff_no = (SELECT headwaiter from restStaff INNER JOIN restBill ON restBill.waiter_no = restStaff.staff_no WHERE cust_name = "Nerida Smith" AND bill_date = 160111);

-- 3. 

SELECT cust_name from restBill WHERE bill_total IN (SELECT MIN(bill_total) FROM restBill);
 
-- 4.

SELECT first_name, surname FROM restStaff WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);

-- 5.

SELECT DISTINCT rb.cust_name, rs.first_name, rs.surname, rrm.room_name FROM restBill rb INNER JOIN restRest_table rrt ON rb.table_no = rrt.table_no INNER JOIN restRoom_Management rrm on rrt.room_name = rrm.room_name AND rrm.room_date = rb.bill_date INNER JOIN restStaff rs ON rrm.headwaiter = rs.staff_no WHERE rb.bill_total = (SELECT MAX(bill_total) FROM restBill);