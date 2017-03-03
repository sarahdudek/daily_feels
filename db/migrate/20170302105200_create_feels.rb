class CreateFeels < ActiveRecord::Migration
  def change
    create_table :feels do |t|
      t.integer :feeler_id, null: false
      t.integer :fatigue_rating, null: false
      t.integer :hunger_rating, null: false
      t.integer :thirst_rating, null: false
      t.integer :discomfort_id, null: false
      t.integer :comfort_id, null: false

      t.timestamps null:false
    end
  end
end
