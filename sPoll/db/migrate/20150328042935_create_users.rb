class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :limit => 100, :null => false, :unique => true
      t.string :password, :null=>false
      t.string :first_name, :null =>false
      t.string :last_name, :null=>false
      t.string :remember_token, :null=>false

      t.boolean :is_active, :null=>false, :default => 1
      t.boolean :is_admin, :null=>false, :default => 0

      t.timestamps :created_at
      t.timestamps :updated_at

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
    add_index  :users, :remember_token
  end
end
