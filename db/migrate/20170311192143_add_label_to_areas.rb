class AddLabelToAreas < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :label, :string
  end
end
