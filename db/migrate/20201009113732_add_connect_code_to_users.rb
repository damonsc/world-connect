class AddConnectCodeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :connect_code, :integer, default: 0
  end
end
