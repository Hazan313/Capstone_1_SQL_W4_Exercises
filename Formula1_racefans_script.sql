-- Shows all the rows in the table limited to 20
SELECT * FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle LIMIT 20;

-- Shows top 5 drivers with the highest rating over the years who placed 1st, 2nd and 3rd
SELECT P1,P2,P3 FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle 
ORDER BY Rating DESC LIMIT 5;

-- Shows all the times Hamilton placed P1 over the course of the years
SELECT * FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle 
WHERE p1 = 'Hamilton' ORDER BY RATING DESC ; 

-- Displays how many times one of the top drivers has been displayed in postion P1
SELECT P1,Count(P1) FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle 
WHERE p1 in 
	  (SELECT p1 FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle 
      WHERE p1 = "Hamilton");
      
  -- Another way to show how many times a top driver (aka Hamilton) has been displayed as P1    
SELECT P1,COUNT(p1) FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle GROUP BY 
p1 HAVING p1 = 'Hamilton' ;

  -- Another way to show how many times a top driver (aka Button) has been displayed as P1    
SELECT P1,COUNT(p1) FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle GROUP BY 
p1 HAVING p1 = 'Button';

  -- Another way to show how many times a top driver (aka Riccardo) has been displayed as P1    
SELECT P1,COUNT(p1) FROM f1_capstone1_schema.formula1_race_fans_ratings_aggregated_kaggle GROUP BY 
p1 HAVING p1 = 'Ricciardo' ;