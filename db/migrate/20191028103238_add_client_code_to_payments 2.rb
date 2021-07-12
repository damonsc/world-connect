class AddClientCodeToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :client_code, :string
  end
end
