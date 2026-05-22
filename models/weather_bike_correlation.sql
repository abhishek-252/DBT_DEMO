WITH CTE AS (
    select 
    t.*, w.*
    from 
    {{ ref('trip_fact') }} t 
    LEFT JOIN {{ ref('daily_weather') }} w
    on t.TRIP_DATE = w.DAILY_WEATHER  
)

select *
from CTE
--where DAILY_WEATHER  is not null