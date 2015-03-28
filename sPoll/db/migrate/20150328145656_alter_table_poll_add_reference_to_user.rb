class AlterTablePollAddReferenceToUser < ActiveRecord::Migration
  def change
    add_column :polls, :user_id, :integer, references: :users
  end
end
