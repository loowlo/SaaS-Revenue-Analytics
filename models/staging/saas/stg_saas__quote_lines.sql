with 

source as (

    select * from {{ source('saas', 'quote_lines') }}

),

renamed as (

    select
        quotelineid,
        quoteid,
        productid,
        qty,
        extendedprice

    from source

)

select * from renamed