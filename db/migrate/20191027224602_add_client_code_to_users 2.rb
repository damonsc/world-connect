class AddClientCodeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :client_code, :integer
  end
end
