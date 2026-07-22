

with students as (
	select
		student_id,
		name,
		major,
		enrollment_year
	from "university_sample"."main"."main_students"



where INCREMENTAL_COLUMN > (select max(enrollment_year) from "university_sample"."main"."enh_main_students")

)

select * from students