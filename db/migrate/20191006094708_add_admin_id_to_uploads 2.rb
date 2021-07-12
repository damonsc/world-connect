class AddAdminIdToUploads < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :admin_id, :integer
    add_index :uploads, :admin_id
  end
end
