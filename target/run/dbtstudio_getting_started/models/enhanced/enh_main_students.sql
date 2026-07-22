
        
            delete from "university_sample"."main"."enh_main_students" as DBT_INCREMENTAL_TARGET
            using "enh_main_students__dbt_tmp20260722112343496618"
            where (
                
                    "enh_main_students__dbt_tmp20260722112343496618".student_id = DBT_INCREMENTAL_TARGET.student_id
                    
                
                
            );
        
    

    insert into "university_sample"."main"."enh_main_students" ("student_id", "name", "major", "enrollment_year")
    (
        select "student_id", "name", "major", "enrollment_year"
        from "enh_main_students__dbt_tmp20260722112343496618"
    )
  