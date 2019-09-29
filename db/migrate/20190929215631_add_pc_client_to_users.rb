class AddPcClientToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pc_client, :boolean, default: false
  end
end
