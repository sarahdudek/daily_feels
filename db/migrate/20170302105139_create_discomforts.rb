class CreateDiscomforts < ActiveRecord::Migration
  def change
    create_table :discomforts do |t|
      t.string :location, null:false
      t.integer :rating, null: false

      t.timestamps null:false
    end
  end
end
