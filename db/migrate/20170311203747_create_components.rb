class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :type
      t.string :title
      t.string :text
      t.string :value
      t.belongs_to :area, foreign_key: true

      t.timestamps
    end
  end
end
