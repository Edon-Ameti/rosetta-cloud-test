with enrollments as (
	select
		enrollment_id,
		student_id,
		course_id,
		semester
	from "university_sample"."main"."enrollments"
)

select * from enrollments