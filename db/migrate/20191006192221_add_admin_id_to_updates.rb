class AddAdminIdToUpdates < ActiveRecord::Migration[6.0]
  def change
    add_column :updates, :admin_id, :integer
    add_index :updates, :admin_id
  end
end
