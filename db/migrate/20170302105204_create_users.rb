class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :username
      t.string :email, :null => false
      t.datetime :birthdate
      t.string :gender
      t.string :hashed_password, :null => false

      t.timestamps null:false
    end
    add_index :users, :email, :unique => true
  end
end
