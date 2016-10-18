
 /*to check if all tables are there*/
tables;

/*creating all the 9 key tables*/

DROP TABLE read_death_hosp;
 CREATE EXTERNAL TABLE read_death_hosp
 (provider_id STRING,
 hospital_name STRING,
 address STRING,
 city STRING,
 state STRING,
 zip_code INT,
 county STRING,
 phone INT,
 measure_name STRING,
 measure_id STRING,
 comp_national STRING,
 denominator STRING,
 score STRING,
 est_low STRING,
 est_hi STRING,
 footnote STRING,
 measure_start DATE,
 measure_end DATE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/readmissionsred';
 
 DROP TABLE measure;   
  CREATE EXTERNAL TABLE measures
 (measure_name STRING,
 measure_id STRING,
 measure_startq STRING,
 measure_start DATE,
 measure_endq STRING,
 measure_end DATE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/measures';
 
 DROP TABLE outcome_score;   
  CREATE EXTERNAL TABLE outcome_score
 (provider_id STRING,
 hospital_name STRING,
 address STRING,
 city STRING,
 state STRING,
 zip_code INT,
 county STRING,
 MORT_30_AMI_performance_rate FLOAT,
 MORT_30_AMI_achievement_points STRING,
 MORT_30_AMI_improvement_points STRING,
 MORT_30_AMI_measure_score STRING,
 MORT_30_HF_performance_rate FLOAT,
 MORT_30_HF_achievement_points STRING,
 MORT_30_HF_improvement_points STRING,
 MORT_30_HF_measure_score STRING,
 MORT_30_PN_performance_rate FLOAT,
 MORT_30_PN_achievement_points STRING,
 MORT_30_PN_improvement_points STRING,
 MORT_30_PN_measure_score STRING,
 PSI_90_performance_rate FLOAT,
 PSI_90_AMI_achievement_points STRING,
 PSI_90_AMI_improvement_points STRING,
 PSI_90_AMI_measure_score STRING,
 HAI_1_performance_rate FLOAT,
 HAI_1_achievement_points STRING,
 HAI_1_improvement_points STRING,
 HAI_1_measure_score STRING)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/survey3';
 
 
 DROP TABLE hcahps_hosp;   
  CREATE EXTERNAL TABLE hcahps_hosp
 (provider_id STRING,
 hospital_name STRING,
 address STRING,
 city STRING,
 state STRING,
 zip_code INT,
 county STRING,
 phone INT,
 hcahps_id STRING,
 hcahps_q STRING,
 hcahps_ans_des STRING,
 patient_survey_star_rating STRING,
 patient_survey_star_rating_footnote STRING,
 hcahps_ans_percent INT,
 hcahps_ans_percent_footnote STRING,
 num_completed_surveys STRING,
 num_completed_surveys_footnote STRING,
 survey_response_percent INT,
 survey_response_percent_footnote STRING,
 measure_start DATE,
 measure_end DATE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/hcahosp';


DROP TABLE patient_expr_survey;   
 CREATE EXTERNAL TABLE patient_expr_survey
 (provider_id STRING,
 hospital_name STRING,
 address STRING,
 city STRING,
 state STRING,
 zip_code INT,
 county STRING,
 comm_with_nurses_ach_pts STRING ,
 comm_with_nurses_imp_pts STRING ,
 comm_with_nurses_dim_score STRING ,
 comm_with_doctors_ach_pts STRING ,
 comm_with_doctors_imp_pts STRING ,
 comm_with_doctors_dim_score STRING ,
 resp_of_hosp_staff_ach_pts STRING ,
 resp_of_hosp_staff_imp_pts STRING ,
 resp_of_hosp_staff_dim_score STRING ,
 pain_mgmt_ach_pts STRING ,
 pain_mgmt_imp_pts STRING ,
 pain_mgmt_dim_score STRING ,
 comm_about_medicines_ach_pts STRING ,
 comm_about_medicines_imp_pts STRING ,
 comm_about_medicines_dim_score STRING ,
 clean_and_quiet_of_hosp_env_ach_pts STRING ,
 clean_and_quiet_of_hosp_env_imp_pts STRING ,
 clean_and_quiet_of_hosp_env_dim_score STRING ,
 discharge_info_ach_pts STRING ,
 discharge_info_imp_pts STRING ,
 discharge_info_dim_score STRING ,
 overall_rating_of_hosp_ach_pts STRING ,
 overall_rating_of_hosp_imp_pts STRING ,
 overall_rating_of_hosp_dim_score STRING ,
 hcahps_base_score INT ,
 hcahps_consistency_score INT)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/survey1';


DROP TABLE hcahps_state;
CREATE EXTERNAL TABLE hcahps_state
 (state STRING,
 hcahps_q STRING,
 hcahps_id STRING,
 hcahps_ans_des STRING,
 hcahps_ans_percent INT,
 footnote STRING,
 measure_start DATE,
 measure_end DATE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/hcastate';

DROP TABLE hcahps_national;    
CREATE EXTERNAL TABLE hcahps_national
 (hcahps_id STRING,
 hcahps_q STRING,
 hcahps_ans_des STRING,
 hcahps_ans_percent INT,
 footnote STRING,
 measure_start DATE,
 measure_end DATE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/hcanat';
    
  DROP TABLE effective_care;
  CREATE EXTERNAL TABLE effective_care
 (provider_id STRING,
 hospital_name STRING,
 address STRING,
 city STRING,
 state STRING,
 zip_code INT,
 county STRING,
 phone INT,
 condition STRING,
 measure_id STRING,
 measure_name STRING,
 score STRING,
 sample STRING,
 footnote STRING,
 measure_start DATE,
 measure_end DATE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/effectivecare';


DROP TABLE total_perf_score;    
CREATE EXTERNAL TABLE total_perf_score
 (provider_id STRING,
 hospital_name STRING,
 address STRING,
 city STRING,
 state STRING,
 zip_code INT,
 county STRING,
 uwtd_clinical_process_score DOUBLE,
 wtd_clinical_process_score DOUBLE,
 uwtd_patient_exp_score DOUBLE,
 wtd_patient_exp_score DOUBLE,
 uwtd_outcome_score DOUBLE,
 wtd_outcome_score DOUBLE,
 uwtd_efficiency_score DOUBLE,
 wtd_efficiency_score DOUBLE,
 total_perf_score DOUBLE)
 ROW FORMAT SERDE 'org.apache.hadoop. .serde2.OpenCSVSerde'
 WITH SERDEPROPERTIES (
 "separatorChar" = ",",
 "quoteChar" = '"',
 "escapeChar" = '\\'
 )
 STORED AS TEXTFILE
 LOCATION '/user/w205/survey2';