# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'



CSV.foreach("db/TownHealthRecord.csv", headers:true) do |row|
  
  town = TownHealthRecord.where({
    town_name: row[0],
    population_below_20: row[2].gsub(/\D/, "").to_i,
    population_above_65:  row[3].gsub(/\D/, "").to_i,
    per_capita_income: row[4].gsub(/\D/, "").to_i,
    percentage_teen_births: row[13],
    infant_mortalities: row[10]
    }).first 

  if town.nil?
    town = TownHealthRecord.new( {
      :town_name => row[0],
      :population_below_20 => row[2].gsub(/\D/, "").to_i,
      :population_above_65 => row[3].gsub(/\D/, "").to_i,
      :per_capita_income => row[4].gsub(/\D/, "").to_i,
      :percentage_teen_births => row[13],
      :infant_mortalities => row[10] 
  })


    town.save!
  end



end

  #   )
  # town_name = TownHeathRecord.New row[0]
  # population_below_20 = row [2]
  # population_above_65 = row [3]
  # per_capita_income = row [4]
  # percentage_teen_births.to_f []
  # infant_mortalities.to_i []

  
  # create a new TownHealthRecord object (user th)
  # set each attribute that we want to save
  # call the .save method to write it to the database
# end


# Geography,"total pop, year 2005","age 0-19, year 2005","age 65+, year 2005","Per Capita Incomeyear 2000","Persons Living Below 200% Poverty,
# year 2000 ","% all Persons Living Below 200% Poverty Level, year 2000",% adequacy prenatal care (kotelchuck),"% C-section deliveries, 2005-2008","Number of infant deaths, 2005-2008","Infant mortality rate (deaths per 1000 live births), 2005-2008",% low birthweight 2005-2008,"% multiple births, 2005-2008","% publicly financed prenatal care, 2005-2008","% teen births, 2005-2008",, 

# Town_Health_Records [
 
#  {
#   total pop: 
#   year 2005:
#   age 0-19


#  }



