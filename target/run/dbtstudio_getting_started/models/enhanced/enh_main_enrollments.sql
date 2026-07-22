
        
            delete from "university_sample"."main"."enh_main_enrollments" as DBT_INCREMENTAL_TARGET
            using "enh_main_enrollments__dbt_tmp20260722112343478175"
            where (
                
                    "enh_main_enrollments__dbt_tmp20260722112343478175".enrollment_id = DBT_INCREMENTAL_TARGET.enrollment_id
                    
                
                
            );
        
    

    insert into "university_sample"."main"."enh_main_enrollments" ("enrollment_id", "student_id", "course_id", "semester")
    (
        select "enrollment_id", "student_id", "course_id", "semester"
        from "enh_main_enrollments__dbt_tmp20260722112343478175"
    )
  