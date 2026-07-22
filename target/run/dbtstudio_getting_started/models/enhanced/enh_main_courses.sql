
  
    
    

    create  table
      "university_sample"."main"."enh_main_courses"
  
    as (
      

with courses as (
	select
		course_id,
		title,
		department,
		credits
	from "university_sample"."main"."main_courses"



)

select * from courses
    );
  
  
  