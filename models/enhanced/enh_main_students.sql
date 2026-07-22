{{
    config(
        materialized='incremental',
        unique_key = ['student_id'],
    )
}}

with students as (
	select
		student_id,
		name,
		major,
		enrollment_year
	from {{ ref('main_students') }}


{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(enrollment_year) from {{ this }})
{% endif %}
)

select * from students