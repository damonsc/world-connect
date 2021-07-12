class AddClientCodeToLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :logs, :client_code, :string
  end
end
