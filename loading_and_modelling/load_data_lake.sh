#!/bin/bash
#The wget and unzip commands are not in this script
#I loaded all files in the datalake
#initial loading in /home/w205/hospital_compare
cd /home/w205/hospital_compare
ls -1
#Renaming all files to remove spaces from filenames
mv 'Complications - State.csv' Complications_State.csv
mv 'Footnote Crosswalk.csv' Footnote_Crosswalk.csv
mv 'HCAHPS - Hospital.csv' HCAHPS_Hospital.csv
mv 'HCAHPS - National.csv' HCAHPS_National.csv
mv 'HCAHPS - State.csv' HCAHPS_State.csv
mv 'Healthcare Associated Infections - Hospital.csv' Healthcare_Associated_Infections_Hospital.csv
mv 'Healthcare Associated Infections - National.csv' Healthcare_Associated_Infections_National.csv
mv 'Healthcare Associated Infections - State.csv' Healthcare_Associated_Infections_State.csv
mv 'Hospital General Information.csv' Hospital_General_Information.csv
mv 'Measure Dates.csv' Measure_Dates.csv
mv 'Medicare Hospital Spending by Claim.csv' Medicare_Hospital_Spending_by_Claim.csv
mv 'Medicare Hospital Spending per Patient - Hospital.csv' Medicare_Hospital_Spending_per_Patient _Hospital.csv
mv 'Outpatient Imaging Efficiency - Hospital.csv' Outpatient_Imaging_Efficiency_Hospital.csv
mv 'Outpatient Imaging Efficiency - National.csv' Outpatient_Imaging_Efficiency_National.csv
mv 'Outpatient Imaging Efficiency - State.csv' Outpatient_Imaging_Efficiency_State.csv
mv 'Outpatient Procedures - Volume.csv' Outpatient_Procedures_Volume.csv
mv 'Payment - Hospital.csv' Payment_Hospital.csv
mv 'Payment - National.csv' Payment_National.csv
mv 'Payment - State.csv' Payment_State.csv
mv 'READMISSION REDUCTION.csv' READMISSION_REDUCTION.csv
mv 'Readmissions and Deaths - Hospital.csv' Readmissions_and_Deaths_Hospital.csv
mv 'Readmissions and Deaths - National.csv' Readmissions_and_Deaths_National.csv
mv 'Readmissions and Deaths - State.csv' Readmissions_and_Deaths_State.csv
mv 'Structural Measures - Hospital.csv' Structural_Measures_Hospital.csv
mv 'Timely and Effective Care - Hospital.csv' Timely_and_Effective_Care_Hospital.csv
mv 'Outpatient Imaging Efficiency - Hospital.csv' Outpatient_Imaging_Efficiency_Hospital.csv
mv 'Outpatient Imaging Efficiency - National.csv' Outpatient_Imaging_Efficiency_National.csv
mv 'Outpatient Imaging Efficiency - State.csv' Outpatient_Imaging_Efficiency_State.csv
mv 'Outpatient Procedures - Volume.csv' Outpatient_Procedures_Volume.csv
mv 'Payment - Hospital.csv' Payment_Hospital.csv
mv 'Payment - National.csv' Payment_National.csv
mv 'Payment - State.csv' Payment_State.csv
mv 'READMISSION REDUCTION.csv' READMISSION_REDUCTION.csv
mv 'Readmissions and Deaths - Hospital.csv' Readmissions_and_Deaths_Hospital.csv
mv 'Readmissions and Deaths - National.csv' Readmissions_and_Deaths_National.csv
mv 'Readmissions and Deaths - State.csv' Readmissions_and_Deaths_State.csv
mv 'Structural Measures - Hospital.csv' Structural_Measures_Hospital.csv
mv 'Timely and Effective Care - Hospital.csv' Timely_and_Effective_Care_Hospital.csv
mv 'Timely and Effective Care - National.csv' Timely_and_Effective_Care_National.csv
mv 'Timely and Effective Care - State.csv' Timely_and_Effective_Care_State.csv
mv 'Medicare Hospital Spending per Patient - State.csv' Medicare_Hospital_Spending_per_Patient_State.csv
mv 'Medicare Hospital Spending per Patient - National.csv' Medicare_Hospital_Spending_per_Patient_National.csv
mv 'Medicare Hospital Spending per Patient - Hospital.csv' Medicare_Hospital_Spending_per_Patient_Hospital.csv

#Removing all headers
 tail -n +2 Complications_Hospital.csv > Complications_Hospital_2.csv
 tail -n +2 Complications_National.csv > Complications_National_2.csv
 tail -n +2 Complications_State.csv > Complications_State_2.csv
 tail -n +2 Footnote_Crosswalk.csv > Footnote_Crosswalk_2.csv
 tail -n +2 FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt.csv > FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt_2.csv
 tail -n +2 FY2013_Net_Change_in_Base_Op_DRG_Payment_Amt.csv > FY2013_Net_Change_in_Base_Op_DRG_Payment_Amt_2.csv
 tail -n +2 FY2013_Percent_Change_in_Medicare_Payments.csv > FY2013_Percent_Change_in_Medicare_Payments_2.csv
 tail -n +2 FY2013_Value_Based_Incentive_Payment_Amount.csv > FY2013_Value_Based_Incentive_Payment_Amount_2.csv
 tail -n +2 HCAHPS_Hospital.csv > HCAHPS_Hospital_2.csv
 tail -n +2 HCAHPS_National.csv > HCAHPS_National_2.csv
 tail -n +2 HCAHPS_State.csv > HCAHPS_State_2.csv
 tail -n +2 Healthcare_Associated_Infections_Hospital.csv > Healthcare_Associated_Infections_Hospital_2.csv
 tail -n +2 Healthcare_Associated_Infections_National.csv > Healthcare_Associated_Infections_National_2.csv
 tail -n +2 Healthcare_Associated_Infections_State.csv > Healthcare_Associated_Infections_State_2.csv
 tail -n +2 Hospital_General_Information.csv > Hospital_General_Information_2.csv
 tail -n +2 HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL.csv > HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL_2.csv
 tail -n +2 HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_HOSPITAL.csv > HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_HOSPITAL_2.csv
 tail -n +2 HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_NATIONAL.csv > HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_NATIONAL_2.csv
 tail -n +2 HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_STATE.csv > HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_STATE_2.csv
 tail -n +2 HOSPITAL_QUARTERLY_QUALITYMEASURE_PCH_HOSPITAL.csv > HOSPITAL_QUARTERLY_QUALITYMEASURE_PCH_HOSPITAL_2.csv
 tail -n +2 hvbp_ami_05_28_2015.csv > hvbp_ami_05_28_2015_2.csv
 tail -n +2 hvbp_Efficiency_05_20_2015.csv > hvbp_Efficiency_05_20_2015_2.csv
 tail -n +2 hvbp_hai_05_28_2015.csv > hvbp_hai_05_28_2015_2.csv
 tail -n +2 hvbp_hcahps_05_28_2015.csv > hvbp_hcahps_05_28_2015_2.csv
 tail -n +2 hvbp_hf_05_28_2015.csv > hvbp_hf_05_28_2015_2.csv
 tail -n +2 hvbp_outcome_05_18_2015.csv > hvbp_outcome_05_18_2015_2.csv
 tail -n +2 hvbp_pn_05_28_2015.csv > hvbp_pn_05_28_2015_2.csv
 tail -n +2 hvbp_quarters.csv > hvbp_quarters_2.csv
 tail -n +2 hvbp_scip_05_28_2015.csv > hvbp_scip_05_28_2015_2.csv
 tail -n +2 hvbp_tps_05_28_2015.csv > hvbp_tps_05_28_2015_2.csv
 tail -n +2 Measure_Dates.csv > Measure_Dates_2.csv
 tail -n +2 Medicare_Hospital_Spending_by_Claim.csv > Medicare_Hospital_Spending_by_Claim_2.csv
 tail -n +2 Medicare_Hospital_Spending_per_Patient_Hospital.csv > Medicare_Hospital_Spending_per_Patient_Hospital_2.csv
 tail -n +2 Medicare_Hospital_Spending_per_Patient_National.csv > Medicare_Hospital_Spending_per_Patient_National_2.csv
 tail -n +2 Medicare_Hospital_Spending_per_Patient_State.csv > Medicare_Hospital_Spending_per_Patient_State_2.csv
 tail -n +2 Outpatient_Imaging_Efficiency_Hospital.csv > Outpatient_Imaging_Efficiency_Hospital_2.csv
 tail -n +2 Outpatient_Imaging_Efficiency_National.csv > Outpatient_Imaging_Efficiency_National_2.csv
 tail -n +2 Outpatient_Imaging_Efficiency_State.csv > Outpatient_Imaging_Efficiency_State_2.csv
 tail -n +2 Outpatient_Procedures_Volume.csv > Outpatient_Procedures_Volume_2.csv
 tail -n +2 Payment_Hospital.csv > Payment_Hospital_2.csv
 tail -n +2 Payment_National.csv > Payment_National_2.csv
 tail -n +2 Payment_State.csv > Payment_State_2.csv
 tail -n +2 READMISSION_REDUCTION.csv > READMISSION_REDUCTION_2.csv
 tail -n +2 Readmissions_and_Deaths_Hospital.csv > Readmissions_and_Deaths_Hospital_2.csv
 tail -n +2 Readmissions_and_Deaths_National.csv > Readmissions_and_Deaths_National_2.csv
 tail -n +2 Readmissions_and_Deaths_State.csv > Readmissions_and_Deaths_State_2.csv
 tail -n +2 Structural_Measures_Hospital.csv > Structural_Measures_Hospital_2.csv
 tail -n +2 Timely_and_Effective_Care_Hospital.csv > Timely_and_Effective_Care_Hospital_2.csv
 tail -n +2 Timely_and_Effective_Care_National.csv > Timely_and_Effective_Care_National_2.csv
 tail -n +2 Timely_and_Effective_Care_State.csv > Timely_and_Effective_Care_State_2.csv

# directory where all files are saved
hdfs dfs -ls /user/w205/hospital_data

#creating individual directories and saving the 9 main file therein.
 hdfs dfs -mkdir /user/w205/effectivecare
 hdfs dfs -put /home/w205/hospital_compare/Timely_and_Effective_Care_Hospital_2.csv /user/w205/effectivecare
 hdfs dfs -mkdir /user/w205/measures     
 hdfs dfs -put /home/w205/hospital_compare/Measure_Dates_2.csv /user/w205/measures     
 hdfs dfs -mkdir /user/w205/readmissions
 hdfs dfs -put /home/w205/hospital_compare/Readmissions_and_Deaths_Hospital_2.csv /user/w205/readmissions
 hdfs dfs -mkdir /user/w205/readmissionsred
 hdfs dfs -put /home/w205/hospital_compare/READMISSION_REDUCTION_2.csv /user/w205/readmissionsred
 hdfs dfs -mkdir /user/w205/survey1        
 hdfs dfs -put /home/w205/hospital_compare/hvbp_hcahps_05_28_2015_2.csv /user/w205/survey1        
 hdfs dfs -mkdir /user/w205/survey2
 hdfs dfs -put /home/w205/hospital_compare/hvbp_tps_05_28_2015_2.csv /user/w205/survey2
 hdfs dfs -mkdir /user/w205/survey3
 hdfs dfs -put /home/w205/hospital_compare/hvbp_outcome_05_18_2015_2.csv /user/w205/survey3
 hdfs dfs -mkdir /user/w205/hcahosp
 hdfs dfs -put /home/w205/hospital_compare/HCAHPS_Hospital_2.csv /user/w205/hcahosp
 hdfs dfs -mkdir /user/w205/hcastate
 hdfs dfs -put /home/w205/hospital_compare/HCAHPS_State_2.csv /user/w205/hcastate
 hdfs dfs -mkdir /user/w205/hcanat  
 hdfs dfs -put /home/w205/hospital_compare/HCAHPS_National_2.csv /user/w205/hcanat  