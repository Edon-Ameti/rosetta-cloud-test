{{
    config(
        materialized='incremental',
        unique_key = ['enrollment_id'],
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
where enrollment_id > (select max(enrollment_id) from {{ this }})
{% endif %}
)

select * from enrollments