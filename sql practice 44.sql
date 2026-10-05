-- 1)Find the average package weight for each delivery mode

select avg(package_weight_kg) as avg_package_weight , delivery_mode
from delivery_data
group by delivery_mode;

-- 2)Find the average delivery rating for each package type.

select avg(delivery_rating) as avg_delivery_rating , package_type
from delivery_data
group by package_type;

-- 3)Find the average delivery cost for each package type.

select avg(delivery_cost) as avg_delivery_cost , package_type
from delivery_data
group by package_type;

-- 4)Find the average distance travelled for each package type.

select avg(distance_km) as avg_distance_travelled , package_type
from delivery_data
group by package_type;

-- 5)Find the average delivery cost for each region.

select avg(delivery_cost) as avg_delivery_cost , region
from delivery_data
group by region;
