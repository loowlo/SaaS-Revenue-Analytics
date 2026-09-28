with 

source as (

    select * from {{ source('saas', 'products') }}

),

renamed as (

    select
        productid,
        product,
        listprice

    from source

)

select * from renamed