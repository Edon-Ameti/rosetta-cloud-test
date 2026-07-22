

with courses as (
	select
		course_id,
		title,
		department,
		credits
	from "university_sample"."main"."main_courses"



where course_id > (select max(course_id) from "university_sample"."main"."enh_main_courses")

)

select * from courses