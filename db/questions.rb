-- What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order("population_above_65").first(3)


-- What 3 towns have the highest population of citizens that are 19 years and younger?


-- What 5 towns have the lowest per capita income?


-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?

TownHealthRecord.where.not(town_name: ['Becket', 'Boston', 'Beverly']).order("percentage_teen_births DESC").first(3)



-- Omitting Boston, what town has the highest number of infant mortalities?

TownHealthRecord.where.not(town_name: 'Boston').order("infant_mortalities DESC").first(1)