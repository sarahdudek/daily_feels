class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :username, :null => false
      t.string :email, :null => false
      t.datetime :birthdate, :null => false
      t.string :gender, :null => false
      t.string :hashed_password, :null => false

      t.timestamps null:false
    end
    add_index :users, :username, :unique => true
  end
end
