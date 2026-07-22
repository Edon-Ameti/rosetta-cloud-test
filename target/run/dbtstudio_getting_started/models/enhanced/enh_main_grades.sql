
        
            delete from "university_sample"."main"."enh_main_grades" as DBT_INCREMENTAL_TARGET
            using "enh_main_grades__dbt_tmp20260722112343511456"
            where (
                
                    "enh_main_grades__dbt_tmp20260722112343511456".grade_id = DBT_INCREMENTAL_TARGET.grade_id
                    
                
                
            );
        
    

    insert into "university_sample"."main"."enh_main_grades" ("grade_id", "enrollment_id", "grade", "date_recorded")
    (
        select "grade_id", "enrollment_id", "grade", "date_recorded"
        from "enh_main_grades__dbt_tmp20260722112343511456"
    )
  