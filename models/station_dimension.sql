WITH bike as (

    select 
    distinct 
    START_STATIO_ID as station_id,
    START_STATION_NAME station_name,
    START_LAT station_lat,
    START_LNG station_long
    from {{ source('demo', 'bike') }}
    where ride_id <> 'ride_id'

)

select *
from bike 
