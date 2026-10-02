 1)Find the number of delayed deliveries for each vehicle type.

select count(*) as number_of_delayed_deliveries , vehicle_type
from delivery_data
where `delayed` = 1
group by vehicle_type;

--2)Find the average delivery time for each delivery mode.

select avg(delivery_time_hours) as avg_delivery_time , delivery_mode
from delivery_data
group by delivery_mode;

--3)Find the number of delayed deliveries for each delivery mode.

select count(*) as number_of_delay_deliveries , delivery_mode
from delivery_data
where `delayed` = 1
group by delivery_mode;

--4)Find the average delivery time for each weather condition.

select avg(delivery_time_hours) as avg_delivery_time , weather_condition
from delivery_data
group by weather_condition;

--5)Find the number of delayed deliveries for each weather condition.

select count(*) as number_of_delayed_deliveries , weather_condition
from delivery_data
where `delayed` = 1
group by weather_condition;
