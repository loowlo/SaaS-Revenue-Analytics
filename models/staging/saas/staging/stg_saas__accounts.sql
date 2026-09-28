select
    *

from {{ source('saas', 'accounts') }}