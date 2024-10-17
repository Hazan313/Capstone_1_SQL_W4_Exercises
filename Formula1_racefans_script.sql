 SELECT * FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle;

 select * from formula1_race_fans_ratings_aggregated_kaggle where p1 = 'Hamilton' order by p1 ; 

 select Count(P1) from formula1_race_fans_ratings_aggregated_kaggle where p1 in 
	  (select p1 from formula1_race_fans_ratings_aggregated_kaggle where p1 = "Hamilton");
      
      

 -- select count(p1) from formula1_race_fans_ratings_aggregated_kaggle GROUP BY p1 having p1 = 'Hamilton' ;