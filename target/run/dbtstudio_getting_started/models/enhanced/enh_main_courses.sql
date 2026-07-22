
        
            delete from "university_sample"."main"."enh_main_courses" as DBT_INCREMENTAL_TARGET
            using "enh_main_courses__dbt_tmp20260722110902222352"
            where (
                
                    "enh_main_courses__dbt_tmp20260722110902222352".course_id = DBT_INCREMENTAL_TARGET.course_id
                    
                
                
            );
        
    

    insert into "university_sample"."main"."enh_main_courses" ("course_id", "title", "department", "credits")
    (
        select "course_id", "title", "department", "credits"
        from "enh_main_courses__dbt_tmp20260722110902222352"
    )
  