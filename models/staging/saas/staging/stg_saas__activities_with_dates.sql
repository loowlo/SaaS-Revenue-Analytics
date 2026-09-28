with 

source as (

    select * from {{ source('saas', 'activities_with_dates') }}

),

renamed as (

    select
        activityid,
        opportunityid,
        activitytype,
        date

    from source

)

select * from renamed