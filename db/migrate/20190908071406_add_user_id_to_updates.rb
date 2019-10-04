class AddUserIdToUpdates < ActiveRecord::Migration[6.0]
  def change
    add_column :updates, :user_id, :integer
    add_index :updates, :user_id
  end
end
