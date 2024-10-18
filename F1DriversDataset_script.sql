-- 	Shows all table rows and records found in the database
	SELECT * FROM f1_capstone1_schema.f1driversdataset ORDER BY Seasons DESC;

-- 	This shows how many seasons each driver has participated in, showing likely hood of popularity
	SELECT Driver,Seasons FROM f1_capstone1_schema.f1driversdataset ORDER BY Seasons DESC;

-- 	Shows the amount races won by respective drivers, even if I dont agree with the results :(
	SELECT * FROM f1_capstone1_schema.f1driversdataset ORDER BY Race_wins DESC;

-- 	This shows driver most likely to be good central theme because they have been on the 
-- 	podium multiple times, limted to 10
	SELECT Driver,Seasons,Podiums FROM f1_capstone1_schema.f1driversdataset ORDER BY Podiums DESC Limit 10;


