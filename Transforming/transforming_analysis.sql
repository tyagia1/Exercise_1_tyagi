/*SQL query to rank best states based on adding the following percentages:
Room was "always" clean
Nurses "always" communicated well
Doctors "always" communicated well
Patients "always" received help as soon as they wanted
Pain was "always" well controlled
Staff "always" explained
Yes, staff "did" give patients this information
Patients who Strongly Agree they understood their care when they left the hospital
Patients who gave a rating of "9" or "10" (high)
"Always" quiet at night
"YES", patients would definitely recommend the hospital*/

CREATE TABLE best_states AS SELECT
state,
sum(hcahps_ans_percent) as performance_index
FROM hcahps_state
WHERE hcahps_id
IN
('H_CLEAN_HSP_A_P',
'H_COMP_1_A_P',
'H_COMP_2_A_P',
'H_COMP_3_A_P',
'H_COMP_4_A_P',
'H_COMP_5_A_P',
'H_COMP_6_Y_P',
'H_COMP_7_SA',
'H_HSP_RATING_9_10',
'H_QUIET_HSP_A_P',
'H_RECMND_DY')
GROUP BY state
ORDER BY performance_index DESC;
         
/*creates a table which consolidates patient experience survey, outcome scores and total performance score*/
         
CREATE TABLE survey_results AS SELECT
g.*,
f.mort_30_ami_performance_rate,
f.mort_30_ami_achievement_points,
f.mort_30_ami_improvement_points,
f.mort_30_ami_measure_score,
f.mort_30_hf_performance_rate,
f.mort_30_hf_achievement_points,
f.mort_30_hf_improvement_points,
f.mort_30_hf_measure_score,
f.mort_30_pn_performance_rate,
f.mort_30_pn_achievement_points,
f.mort_30_pn_improvement_points,
f.mort_30_pn_measure_score,
f.psi_90_performance_rate,
f.psi_90_ami_achievement_points,
f.psi_90_ami_improvement_points,
f.psi_90_ami_measure_score,
f.hai_1_performance_rate,
f.hai_1_achievement_points,
f.hai_1_improvement_points,
f.hai_1_measure_score,
i.uwtd_clinical_process_score,
i.wtd_clinical_process_score,
i.uwtd_patient_exp_score,
i.wtd_patient_exp_score,
i.uwtd_outcome_score,
i.wtd_outcome_score,
i.uwtd_efficiency_score,
i.wtd_efficiency_score,
i.total_perf_score
FROM patient_expr_survey_parquet AS g
INNER JOIN outcome_score_parquet AS f
ON g.provider_id = f.provider_id
INNER JOIN total_perf_score_parquet as i
ON f.provider_id = i.provider_id;


/*modifies that table so that strongs such as "2 out of 10" are converted into integer score like 2*/         
create table survey_results2 as select
provider_id,
hospital_name,
city,
zip_code,
state,
county,
int(substring(comm_with_nurses_ach_pts,1,1)) as comm_with_nurses_ach_pts2,
int(substring(comm_with_nurses_imp_pts,1,1)) as comm_with_nurses_imp_pts2,
int(substring(comm_with_nurses_dim_score,1,1)) as comm_with_nurses_dim_score2,
int(substring(comm_with_doctors_ach_pts,1,1)) as comm_with_doctors_ach_pts2,
int(substring(comm_with_doctors_imp_pts,1,1)) as comm_with_doctors_imp_pts2,
int(substring(comm_with_doctors_dim_score,1,1)) as comm_with_doctors_dim_score2,
int(substring(resp_of_hosp_staff_ach_pts,1,1)) as resp_of_hosp_staff_ach_pts2,
int(substring(resp_of_hosp_staff_imp_pts,1,1)) as resp_of_hosp_staff_imp_pts2,
int(substring(resp_of_hosp_staff_dim_score,1,1)) as resp_of_hosp_staff_dim_score2,
int(substring(pain_mgmt_ach_pts,1,1)) as pain_mgmt_ach_pts2,
int(substring(pain_mgmt_imp_pts,1,1)) as pain_mgmt_imp_pts2,
int(substring(pain_mgmt_dim_score,1,1)) as pain_mgmt_dim_score2,
int(substring(comm_about_medicines_ach_pts,1,1)) as comm_about_medicines_ach_pts2,
int(substring(comm_about_medicines_imp_pts,1,1)) as comm_about_medicines_imp_pts2,
int(substring(comm_about_medicines_dim_score,1,1)) as comm_about_medicines_dim_score2,
int(substring(clean_and_quiet_of_hosp_env_ach_pts,1,1)) as clean_and_quiet_of_hosp_env_ach_pts2,
int(substring(clean_and_quiet_of_hosp_env_imp_pts,1,1)) as clean_and_quiet_of_hosp_env_imp_pts2,
int(substring(clean_and_quiet_of_hosp_env_dim_score,1,1)) as clean_and_quiet_of_hosp_env_dim_score2,
int(substring(discharge_info_ach_pts,1,1)) as discharge_info_ach_pts2,
int(substring(discharge_info_imp_pts,1,1)) as discharge_info_imp_pts2,
int(substring(discharge_info_dim_score,1,1)) as discharge_info_dim_score2,
int(substring(overall_rating_of_hosp_ach_pts,1,1)) as overall_rating_of_hosp_ach_pts2,
int(substring(overall_rating_of_hosp_imp_pts,1,1)) as overall_rating_of_hosp_imp_pts2,
int(substring(overall_rating_of_hosp_dim_score,1,1)) as overall_rating_of_hosp_dim_score2,
hcahps_base_score,
hcahps_consistency_score,
mort_30_ami_performance_rate,
int(substring(mort_30_ami_achievement_points,1,1)) as mort_30_ami_achievement_points2,
int(substring(mort_30_ami_improvement_points,1,1)) as mort_30_ami_improvement_points2,
int(substring(mort_30_ami_measure_score,1,1)) as mort_30_ami_measure_score2,
mort_30_hf_performance_rate,
int(substring(mort_30_hf_achievement_points,1,1)) as mort_30_hf_achievement_points2,
int(substring(mort_30_hf_improvement_points,1,1)) as mort_30_hf_improvement_points2,
int(substring(mort_30_hf_measure_score,1,1)) as mort_30_hf_measure_score2,
mort_30_pn_performance_rate,
int(substring(mort_30_pn_achievement_points,1,1)) as mort_30_pn_achievement_points2,
int(substring(mort_30_pn_improvement_points,1,1)) as mort_30_pn_improvement_points2,
int(substring(mort_30_pn_measure_score,1,1)) as mort_30_pn_measure_score2,
psi_90_performance_rate,
int(substring(psi_90_ami_achievement_points,1,1)) as psi_90_ami_achievement_points2,
int(substring(psi_90_ami_improvement_points,1,1)) as psi_90_ami_improvement_points2,
int(substring(psi_90_ami_measure_score,1,1)) as psi_90_ami_measure_score2,
hai_1_performance_rate,
int(substring(hai_1_achievement_points,1,1)) as hai_1_achievement_points2,
int(substring(hai_1_improvement_points,1,1)) as hai_1_improvement_points2,
int(substring(hai_1_measure_score,1,1)) as hai_1_measure_score2,
uwtd_clinical_process_score,
wtd_clinical_process_score,
uwtd_patient_exp_score,
wtd_patient_exp_score,
uwtd_outcome_score,
wtd_outcome_score,
uwtd_efficiency_score,
wtd_efficiency_score,
total_perf_score
from survey_results;
         
/*Ranks hospitals based on total total_perf_score, base score and consistency scores*/   
      
CREATE TABLE best_hospital1 AS SELECT
provider_id,
hospital_name,
city,
state,
total_perf_score,
hcahps_base_score,
hcahps_consistency_score
FROM survey_results
ORDER BY 
total_perf_score DESC,
hcahps_base_score DESC,
hcahps_consistency_score DESC;

/* the following three queries calculate average score, aggregate score and score variance from effective care table*/
        
create table effective_care_2 as select
*,
regexp_extract(score,'[0-9]+', 0) as score_num
from effective_care;

create table effective_care_3 as select
*
from effective_care_2
where score_num <= 100 and length(score) < 6;

create table care_score_ranking as select
provider_id,
hospital_name,
sum(score_num) as agg_score,
avg(score_num) as avg_score,
variance(score_num) as var_score
FROM effective_care_3
GROUP BY
provider_id,
hospital_name
ORDER BY avg_score DESC, var_score DESC;

         
         