with grades as (
	select
		grade_id,
		enrollment_id,
		grade,
		date_recorded
	from "university_sample"."main"."grades"
)

select * from grades