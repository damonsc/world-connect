class AddSslaClientToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ssla_client, :boolean
  end
end
