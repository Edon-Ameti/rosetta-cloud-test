{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}

with enrollments as (
	select
		enrollment_id,
		student_id,
		course_id,
		semester
	from {{ ref('main_enrollments') }}


{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)

select * from enrollments