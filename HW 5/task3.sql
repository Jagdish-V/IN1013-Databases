SELECT first_name, surname FROM restStaff INNER JOIN restBill ON restStaff.staff_no = restBill.waiter_no WHERE cust_name = 'Tanya Singh';
SELECT room_date FROM restRoom_management INNER JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no  WHERE room_name = 'Green' AND first_name = 'Charles' AND room_date LIKE '1602%';
SELECT T2.first_name, T2.surname FROM restStaff AS T1 INNER JOIN restStaff AS T2 ON T1.headwaiter = T2.headwaiter WHERE T1.first_name = 'Zoe' AND T1.staff_no != T2.staff_no;
SELECT cust_name, bill_total, first_name FROM restBill INNER JOIN restStaff ON restBill.waiter_no = restStaff.staff_no ORDER BY bill_total DESC;
SELECT first_name, surname FROM restStaff AS T1 INNER JOIN restBill AS T2 ON INNER JOIN restStaff.staff_no = restBill.waiter_no WHERE bill_no = 14 AND bill_no = 17;
SELECT first_name, surname FROM restStaff INNER JOIN restRoom_management ON restRoom_management.headwaiter = restStaff.staff_no WHERE room_name = 'Blue' AND room_date = '160312';