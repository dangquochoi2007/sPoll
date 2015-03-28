class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, :limit => 255, :null => false
      t.text :program_describe ,:default => nil

      t.timestamps :start_at , :null=>false
      t.timestamps :close_at , :null=>false
      t.timestamps null: false
    end
  end
end
