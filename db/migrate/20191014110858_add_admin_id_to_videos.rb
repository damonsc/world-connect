class AddAdminIdToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :admin_id, :integer
    add_index :videos, :admin_id
  end
end
