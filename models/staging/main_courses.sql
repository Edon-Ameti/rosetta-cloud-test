with courses as (
	select
		course_id,
		title,
		department,
		credits
	from {{ source('main', 'courses') }}
)

select * from courses