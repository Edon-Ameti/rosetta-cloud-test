{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}

with courses as (
	select
		course_id,
		title,
		department,
		credits
	from {{ ref('main_courses') }}


{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)

select * from courses