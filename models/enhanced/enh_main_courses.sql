{{
    config(
        materialized='incremental',
        unique_key = ['course_id'],
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
where course_id > (select max(course_id) from {{ this }})
{% endif %}
)

select * from courses