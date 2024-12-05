-- 1.
CREATE VIEW samsBills
AS SELECT rs.first_name, rs.surname, rb.bill_date, rb.cust_name, rb.bill_total
FROM restBill rb
INNER JOIN restStaff rs ON rs.staff_no = rb.waiter_no
WHERE rs.first_name = "Sam";

-- 2.
CREATE OR REPLACE VIEW samsBills
AS SELECT rs.first_name, rs.surname, rb.bill_date, rb.cust_name, rb.bill_total
FROM restBill rb
INNER JOIN restStaff rs ON rs.staff_no = rb.waiter_no
WHERE rs.first_name = "Sam" AND rb.bill_total > 400;

-- 3.
CREATE OR REPLACE VIEW roomTotals 
AS SELECT rm.room_name, SUM(rt.no_of_seats) AS total_sum
FROM restroom_management rm
INNER JOIN restrest_table rt ON rm.room_name = rt.room_name
GROUP BY rm.room_name;

-- 4.
CREATE OR REPLACE VIEW teamTotals 
AS SELECT CONCAT(a.first_name, ' ', a.surname) AS full_name, COUNT(b.staff_no) AS total_sum
FROM restStaff a
INNER JOIN restStaff b ON a.staff_no = b.staff_no
GROUP BY b.staff_no;


