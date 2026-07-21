with enrollments as (
	select
		enrollment_id,
		student_id,
		course_id,
		semester
	from {{ source('main', 'enrollments') }}
)

select * from enrollments