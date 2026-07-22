

with grades as (
	select
		grade_id,
		enrollment_id,
		grade,
		date_recorded
	from "university_sample"."main"."main_grades"



where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from "university_sample"."main"."enh_main_grades")

)

select * from grades