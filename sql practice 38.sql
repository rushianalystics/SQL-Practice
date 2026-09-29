-- 1. Find the total number of deliveries in the dataset.

select count(*) as total_delivery
from delivery_data;

-- 2) Find the number of delayed deliveries.

SELECT COUNT(*) AS total_delayed_delivery
FROM delivery_data
WHERE `delayed` = 1;

-- 3) Find the total number of on-time deliveries.

SELECT COUNT(*) AS On_time_delivery
FROM delivery_data
WHERE `delayed` = 0;

-- 4)Find the number of deliveries for each delivery_status.

select delivery_status , count(*) as number_delivery_status
from delivery_data
group by delivery_status;

-- 5)Find the average delivery time for all deliveries.

select avg(delivery_time_hours) as avg_delivery_time 
from delivery_data
