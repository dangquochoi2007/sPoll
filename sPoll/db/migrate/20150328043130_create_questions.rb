class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title ,:null=>false
      t.text :description, :default => nil
      t.text :notes, :default => nil
      t.integer :parent_id, :default => nil
      t.integer :ordering, :default => nil
      t.references :poll, index:true
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
