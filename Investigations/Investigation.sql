/*to select best states*/
SELECT * FROM best_states LIMIT 10;

/*To select best hospitals based on scores of total performance,
outcome and consistency*/
select * from best_hospital1 limit 20;


/*to select best hospitals based on aggregate care score, average */
SELECT provider_id,hospital_name,agg_score,avg_score
FROM care_score_ranking
ORDER BY agg_score DESC,avg_score DESC
LIMIT 20;

/*To rank hospitals on variability*/
SELECT provider_id,hospital_name,var_score
FROM care_score_ranking
ORDER BY var_score DESC
LIMIT 20;