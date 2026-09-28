with 

source as (

    select * from {{ source('saas', 'quotes') }}

),

renamed as (

    select
        quoteid,
        opportunityid,
        total

    from source

)

select * from renamed