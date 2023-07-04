-- find top 10 pickup locations based on number of trips
select pickup.pickup_latitude, pickup.pickup_longitude, count(distinct trip_id) 
from uber_data_engineering.fact_table as ft
join uber_data_engineering.pickup_location_dim as pickup
on ft.pickup_location_id = pickup.pickup_location_id
group by 1,2 
order by 3 desc
limit 10;

-- find total number of trips by passenger count
select pc.passenger_count, count(distinct trip_id)
from uber_data_engineering.fact_table as ft
join uber_data_engineering.passenger_count_dim as pc
on ft.passenger_count_id = pc.passenger_count_id
group by 1
order by 2 desc;

-- find average fare amount by hour of the day
select dt.pick_hour, avg(ft.fare_amount)
from uber_data_engineering.fact_table as ft
join uber_data_engineering.datetime_dim as dt
on ft.datetime_id = dt.datetime_id
group by 1
order by 1 ;