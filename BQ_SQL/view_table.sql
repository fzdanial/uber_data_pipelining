create or replace table `uber_data_engineering.tb1_analytics` as (
select 
  f.VendorID,
  d.tpep_pickup_datetime,
  d.tpep_dropoff_datetime,
  p.passenger_count,
  t.trip_distance,
  r.rate_code_name,
  pick.pickup_latitude,
  pick.pickup_longitude,
  drop.dropoff_latitude,
  drop.dropoff_longitude,
  pay.payment_type_name,
  f.fare_amount, 
  f.extra,
  f.mta_tax,
  f.tip_amount,
  f.tolls_amount,
  f.improvement_surcharge,
  f.total_amount
from `uber_data_engineering.fact_table` f
join `uber_data_engineering.datetime_dim` d
  on  f.datetime_id = d.datetime_id
join `uber_data_engineering.passenger_count_dim` p
  on f.passenger_count_id = p.passenger_count_id
join `uber_data_engineering.trip_distance_dim` t
  on f.trip_distance_id = t.trip_distance_id
join `uber_data_engineering.rate_code_dim` r
  on f.rate_code_id = r.rate_code_id
join `uber_data_engineering.pickup_location_dim` pick
  on f.pickup_location_id = pick.pickup_location_id
join `uber_data_engineering.dropoff_location_dim` drop
  on f.dropoff_location_id = drop.dropoff_location_id
join `uber_data_engineering.payment_type_dim` pay
  on f.payment_type_id = pay.payment_type_id)
;
