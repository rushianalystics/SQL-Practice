-- 1)Find the average delivery time for delayed deliveries.

select AVG(delivery_time_hours) AS avg_delayed_delivery
FROM delivery_data
WHERE `delayed` = 1;

-- 2)Find the average delivery time for on-time deliveries.

select avg(delivery_time_hours) as on_times_deliveries
from delivery_data
where `delayed` = 0;

-- 3)Find the average actual delivery time and average expected delivery time.

select avg(delivery_time_hours) as actual_delivery_time , 
avg(expected_time_hours) as expected_delivery_time
from delivery_data;
    
-- 4)Find the average delivery time difference between actual and expected time.

select avg(delivery_time_hours - expected_time_hours) as difference_actual_expected_time
from delivery_data;

-- 5)Find the average delivery time by region.

select avg(delivery_time_hours) as avg_delivery_time , region
from delivery_data
group by region;
