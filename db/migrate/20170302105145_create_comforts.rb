class CreateComforts < ActiveRecord::Migration
  def change
    create_table :comforts do |t|
      t.string :location, null:false
      t.integer :rating, null: false

      t.timestamps null:false
    end
  end
end
