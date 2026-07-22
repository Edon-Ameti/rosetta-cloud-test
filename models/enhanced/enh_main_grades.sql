{{
    config(
        materialized='incremental',
        unique_key = ['grade_id'],
    )
}}

with grades as (
	select
		grade_id,
		enrollment_id,
		grade,
		date_recorded
	from {{ ref('main_grades') }}


{% if is_incremental() %}
where date_recorded > (select max(date_recorded) from {{ this }})
{% endif %}
)

select * from grades