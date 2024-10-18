
SELECT * FROM f1_capstone1_schema.formula_racing_data_5years ORDER BY `Formula_racing:_(United States)` DESC; 
/* 	This data was from google trends where an index of 0-100 represents 'Hotness' or Relative trendiness rate,
	with 0 being very low frequency and 100 being highest. Another reason why the trend has increased
	over the years can be due to the Netflix show engagement and USA viewers finally catching on to F1*/

-- Shows where popularity / interest has somehwat declined according to google trends
SELECT * FROM f1_capstone1_schema.formula_racing_data_5years 
ORDER BY `Formula_racing:_(United States)` ASC; 
