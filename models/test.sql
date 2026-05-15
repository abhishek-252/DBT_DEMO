select
*
from {{ ref('model_name') }}
limit 10