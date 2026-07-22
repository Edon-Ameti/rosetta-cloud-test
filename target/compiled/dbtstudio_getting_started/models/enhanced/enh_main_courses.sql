

with courses as (
	select
		course_id,
		title,
		department,
		credits
	from "university_sample"."main"."main_courses"



)

select * from courses