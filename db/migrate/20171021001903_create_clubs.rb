class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :layout
      t.timestamps
    end

    create_table :descriptions do |t|
      t.string :name
      t.text :content
      t.timestamps
    end
    
    create_table :pictures do |t|
      t.string :name
      t.string :pic
      t.timestamps
    end
  end
end
