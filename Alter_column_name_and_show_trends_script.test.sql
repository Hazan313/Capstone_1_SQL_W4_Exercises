SELECT * FROM f1_capstone1_schema.formula_racing_data_5years ORDER BY Week DESC;

-- This Query shows the highest times when Formula Racing was trending 
SELECT * FROM f1_capstone1_schema.formula_racing_data_5years ORDER BY `Formula_racing:_(United States)` DESC;

-- This was to alter coumn name and to provide a way to sort the dates
ALTER TABLE `f1_capstone1_schema`.`formula_racing_data_5years` 
CHANGE COLUMN `Week` `Week` VARCHAR(25) NULL DEFAULT NULL ;

