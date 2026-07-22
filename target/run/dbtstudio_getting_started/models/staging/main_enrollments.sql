
  
  create view "university_sample"."main"."main_enrollments__dbt_tmp" as (
    with enrollments as (
	select
		enrollment_id,
		student_id,
		course_id,
		semester
	from "university_sample"."main"."enrollments"
)

select * from enrollments
  );
