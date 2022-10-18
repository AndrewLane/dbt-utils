with data as (

    select
        {{ dbt_utils.star(from=ref('data_star_no_quotes'), quote_identifiers=True) | upper }}

    from {{ ref('data_star_no_quotes') }}

)

select * from data