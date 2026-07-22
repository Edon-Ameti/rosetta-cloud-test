
  
  create view "university_sample"."main"."main_students__dbt_tmp" as (
    with students as (
	select
		student_id,
		name,
		major,
		enrollment_year
	from "university_sample"."main"."students"
)

select * from students
  );
