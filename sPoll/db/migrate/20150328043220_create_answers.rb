class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :poll, index:true
      t.references :question
      t.references :member, index:true
      t.string :result, :default =>nil
      t.string :score, :null =>false, :default =>0
      t.timestamps :created_at
      t.timestamps :updated_at
      t.timestamps null: false
    end
  end
end
