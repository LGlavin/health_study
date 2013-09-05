-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT * FROM  town_health_records ORDER BY population_above_65 DESC LIMIT 3

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT * FROM town_health_records ORDER BY population_below_20 DESC LIMIT 3

-- What 5 towns have the lowest per capita income?
SELECT * FROM town_health_records ORDER BY per_capita_income ASC LIMIT 5

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT * FROM town_health_records WHERE ("town_health_records"."town_name" NOT IN ('Becket', 'Boston', 'Beverly')) ORDER BY percentage_teen_births DESC LIMIT 3

-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT * FROM town_health_records WHERE ("town_health_records"."town_name" != 'Boston') ORDER BY infant_mortalities ASC LIMIT 1