

with grades as (
	select
		grade_id,
		enrollment_id,
		grade,
		date_recorded
	from "university_sample"."main"."main_grades"



)

select * from grades