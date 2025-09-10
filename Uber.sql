use db_uber
-- What is the number of each bookings status?
select Booking_Status, count(*) as total_count
from uber
group by Booking_Status
order by total_count desc

--  How much revenue is lost due to incomplete rides?
select Booking_Status , sum(Booking_Value) as total_lose
from uber
where Booking_Status = 'Incomplete'

--  How many rides were cancelled by customers or drivers?
---- customer
select count(*) as Customer_total_cancelled
from uber
where Cancelled_Rides_by_Customer = 1
---- driver
select count(*) Driver_total_cancelled
from uber
where Cancelled_Rides_by_Driver = 1

--  What are the top reasons for cancellation by customer and driver?
---- customer
select Reason_for_cancelling_by_Customer, count(*) as total_cancelled
from uber
group by Reason_for_cancelling_by_Customer 
order by total_cancelled
---- driver
select Driver_Cancellation_Reason , count(*) as total_cancelled
from uber
group by Driver_Cancellation_Reason 
order by total_cancelled

--  Which vehicle types are most used? and which has the highest completion rate?
SELECT vehicle_type, COUNT(*) AS total_rides
FROM uber
GROUP BY vehicle_type
ORDER BY total_rides DESC

SELECT vehicle_type,
    ROUND(SUM(CASE WHEN booking_status = 'completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS completion_rate
FROM uber
GROUP BY vehicle_type
ORDER BY completion_rate DESC

--  What are the most used payments methods?

SELECT 
    payment_method,
    COUNT(*) AS total
FROM uber
GROUP BY payment_method
ORDER BY total

--  What times of day are bookings most likely to fail?
SELECT 
    HOUR(STR_TO_DATE(time, '%H:%i:%s')) AS booking_hour,
    COUNT(*) AS failed_booking
FROM uber
WHERE booking_status IN ('cancelled', 'incomplete', 'no_driver_found')
GROUP BY booking_hour, booking_status
ORDER BY failed_booking desc
limit 5

--  What times of day are bookings least likely to fail?
SELECT 
    HOUR(STR_TO_DATE(time, '%H:%i:%s')) AS booking_hour,
    COUNT(*) AS failed_booking
FROM uber
WHERE booking_status IN ('cancelled', 'incomplete', 'no_driver_found')
GROUP BY booking_hour, booking_status
ORDER BY failed_booking
limit 5

-- What is the total revenue earned from completed rides?
SELECT 
    SUM(booking_value) AS total_revenue
FROM uber
WHERE booking_status = 'completed';


-- What is the average booking value
SELECT 
    ROUND(AVG(booking_value), 2) AS avg_booking_value
FROM uber
WHERE booking_status = 'completed';



-- What is the total revenue lost by each vehicle?
SELECT 
    vehicle_type,
    SUM(booking_value) AS revenue_lost
FROM uber
WHERE booking_status IN ('incomplete', 'cancelled', 'no_driver_found')
GROUP BY vehicle_type
ORDER BY revenue_lost DESC;






