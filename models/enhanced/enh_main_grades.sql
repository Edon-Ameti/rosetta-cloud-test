{{
    config(
        materialized='date_recorded',
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
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)

select * from grades