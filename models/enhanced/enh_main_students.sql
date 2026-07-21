{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
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
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)

select * from students