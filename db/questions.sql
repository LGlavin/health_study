-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT * FROM  town_health_records ORDER BY population_above_65 DESC LIMIT 3

-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT * FROM town_health_records ORDER BY population_below_20 DESC LIMIT 3

-- What 5 towns have the lowest per capita income?
SELECT * FROM town_health_records ORDER BY lowest_per_capita_income ASC LIMIT 3

-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT * FROM 
TownHealthRecord.where("town_name" != "Boston").where("town_name" != "Becket").where("town_name" != "Beverly").order("percentage_teen_births DESC").first(3)

TownHealthRecord.all.where("town_name != Boston").where("town_name != Becket").where("town_name != Beverly").order("percentage_teen_births DESC").first(3)

-- Omitting Boston, what town has the highest number of infant mortalities?

SELECT * FROM town_health_records WHERE id NOT IN (1) ORDER BY per_capita_income ASC LIMIT 3  