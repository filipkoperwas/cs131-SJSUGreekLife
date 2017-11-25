class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :layout
      t.text :description
      t.string :picture
      t.timestamps
    end
  end
end
