SELECT * FROM f1_capstone1_schema.formula_racing_data_5years; 

Select * FROM f1_capstone1_schema.formula_racing_data_5years ORDER BY Week;

-- Used alter table sql code to rename Column name from "?`~Week " to "Week"
 ALTER TABLE `f1_capstone1_schema`.`formula_racing_data_5years` 
 CHANGE COLUMN `ï»¿Week` `Week` TEXT NULL DEFAULT NULL ;
