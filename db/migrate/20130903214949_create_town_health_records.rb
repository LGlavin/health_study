class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town_name
      t.integer :population_below_20
      t.integer :population_above_65
      t.integer :per_capita_income
      t.float :percentage_teen_births
      t.integer :infant_mortalities
    end
  end
end
