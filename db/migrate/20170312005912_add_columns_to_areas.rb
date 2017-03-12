class AddColumnsToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :latitude, :string
    add_column :areas, :longitude, :string
  end
end
