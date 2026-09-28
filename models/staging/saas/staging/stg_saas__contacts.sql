with 

source as (

    select * from {{ source('saas', 'contacts') }}

),

renamed as (

    select
        contactid,
        accountid,
        name,
        title,
        email

    from source

)

select * from renamed