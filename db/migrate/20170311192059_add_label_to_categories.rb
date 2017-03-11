class AddLabelToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :label, :string
  end
end
