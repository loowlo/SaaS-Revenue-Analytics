select
    *

from {{ source('saas', 'opportunities') }}