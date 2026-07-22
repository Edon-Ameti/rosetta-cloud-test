

with courses as (
	select
		course_id,
		title,
		department,
		credits
	from "university_sample"."main"."main_courses"



where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from "university_sample"."main"."enh_main_courses")

)

select * from courses