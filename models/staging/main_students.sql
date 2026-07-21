with students as (
	select
		student_id,
		name,
		major,
		enrollment_year
	from {{ source('main', 'students') }}
)

select * from students