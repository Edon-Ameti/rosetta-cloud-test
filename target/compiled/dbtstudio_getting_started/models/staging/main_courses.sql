with courses as (
	select
		course_id,
		title,
		department,
		credits
	from "university_sample"."main"."courses"
)

select * from courses