class AlterUserChangeFistnameLastnameDefault < ActiveRecord::Migration
  def change
    change_column :users, :first_name, :string, :null => true, :default => nil
    change_column :users, :last_name, :string, :null => true, :default => nil
  end
end
