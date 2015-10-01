class AddUserToChecklists < ActiveRecord::Migration
  def change
    add_column :checklists, :user_id, :integer
    add_index :checklists, :user_id
  end
end
