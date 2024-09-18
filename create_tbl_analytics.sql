---Query used to create the table which is to be used by Data Analyst in the report builder tool---

CREATE OR REPLACE TABLE 'data-engineer-project-435420.uber_data_engineering_rs.tbl_analytics' AS (

SELECT

f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pick.pickup_latitude,
pick.pickup_longitude,
drp.dropoff_latitude,
drp.dropoff_longitude,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge

FROM
    'data-engineer-project-435420.uber_data_engineering_rs.fact_table' f 
JOIN
    'data-engineer-project-435420.uber_data_engineering_rs.datetime_dim' d 
 ON
    f.datetime_id = d.datetime_id
JOIN 
    'data-engineer-project-435420.uber_data_engineering_rs.passenger_count_dim' p 
ON
    f.passenger_count_id = p.passenger_count_id
JOIN
    'data-engineer-project-435420.uber_data_engineering_rs.trip_distance_dim' t 
ON 
    f.trip_distance_id = t.trip_distance_id
JOIN 
    'data-engineer-project-435420.uber_data_engineering_rs.rate_code_dim' r 
ON 
    f.rate_code_id = r.rate_code_id
JOIN 
    'data-engineer-project-435420.uber_data_engineering_rs.pickup_location_dim pick' 
ON 
    'f.pickup_location_id = pick.pickup_location_id'
JOIN 
    'data-engineer-project-435420.uber_data_engineering_rs.dropoff_location_dim drp' 
ON 
    f.dropoff_location_id = drp.dropoff_location_id
JOIN 
    'data-engineer-project-435420.uber_data_engineering_rs.payment_type_dim' pay 
ON 
    f.payment_type_id = pay.payment_type_id)
;