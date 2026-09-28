with 

source as (

    select * from {{ source('saas', 'users') }}

),

renamed as (

    select
        userid,
        salesrep,
        region

    from source

)

select * from renamed