class AddNewColumnsToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :income, :string
    add_column :areas, :average_age, :string
    add_column :areas, :voting_result, :string
  end
end
