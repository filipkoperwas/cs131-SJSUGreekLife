class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :layout
      t.string :title_1
      t.text :description_1
      t.string :title_2
      t.text :description_2
      t.string :title_3
      t.text :description_3
      t.string :title_4
      t.text :description_4
      t.string :title_5
      t.text :description_5
      t.timestamps
    end
  end
end
