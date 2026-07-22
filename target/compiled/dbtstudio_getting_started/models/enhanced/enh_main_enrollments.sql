

with enrollments as (
	select
		enrollment_id,
		student_id,
		course_id,
		semester
	from "university_sample"."main"."main_enrollments"



where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from "university_sample"."main"."enh_main_enrollments")

)

select * from enrollments