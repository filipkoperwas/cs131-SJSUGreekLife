class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.string :name
      t.text :content
      t.belongs_to :club, index: true

      t.timestamps
    end
  end
end
