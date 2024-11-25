-- 1.

SELECT rs.first_name, rs.surname, rb.bill_date, COUNT(rb.bill_no) FROM restBill rb INNER JOIN restStaff rs ON rb.waiter_no = rs.staff_no GROUP BY rs.staff_no, rb.bill_date HAVING COUNT(rb.bill_no) >= 2;

-- 2.

SELECT room_name, COUNT(table_no) FROM restRest_Table WHERE no_of_seats > 6 GROUP BY room_name;

-- 3.

SELECT rrt.room_name, COUNT(rb.bill_no) FROM restRest_Table rrt INNER JOIN restBill rb ON rrt.table_no = rb.table_no GROUP BY rrt.room_name;

-- 4. 

SELECT hs.first_name, hs.surname, SUM(rb.bill_total) AS Total_Bill_Amount FROM restStaff ws INNER JOIN restBill rb ON ws.staff_no = rb.waiter_no INNER JOIN restStaff hs ON ws.headwaiter = hs.staff_no GROUP BY hs.staff_no ORDER BY Total_Bill_Amount DESC;

-- 5. 

SELECT cust_name FROM restBill GROUP BY cust_name HAVING AVG(bill_total) > 400;

-- 6.

SELECT rs.first_name, rs.surname, COUNT(rb.bill_no), rb.bill_date FROM restStaff rs INNER JOIN restBill rb ON rs.staff_no = rb.waiter_no GROUP BY rs.staff_no, rb.bill_date HAVING COUNT(rb.bill_no) >= 3;
