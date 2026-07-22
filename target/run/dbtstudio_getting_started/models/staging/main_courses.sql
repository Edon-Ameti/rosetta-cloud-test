
  
  create view "university_sample"."main"."main_courses__dbt_tmp" as (
    with courses as (
	select
		course_id,
		title,
		department,
		credits
	from "university_sample"."main"."courses"
)

select * from courses
  );
