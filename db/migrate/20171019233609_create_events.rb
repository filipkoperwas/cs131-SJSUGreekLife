class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :Calendar
      t.string :Club
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
