class CreateQuestionOptions < ActiveRecord::Migration
  def change
    create_table :question_options do |t|
      t.string :title
      t.string :explain_detail

      t.integer :score, :null =>false, :default => 0

      t.references :poll, index:true
      t.references :question, index: true
      t.references :member, index:true
      t.timestamps null: false
    end
  end
end
