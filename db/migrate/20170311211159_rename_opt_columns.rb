class RenameOptColumns < ActiveRecord::Migration[5.0]
  def change
  	rename_column :categories, :opt1, :left
  	rename_column :categories, :opt2, :right
  end
end
