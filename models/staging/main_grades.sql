with grades as (
	select
		grade_id,
		enrollment_id,
		grade,
		date_recorded
	from {{ source('main', 'grades') }}
)

select * from grades