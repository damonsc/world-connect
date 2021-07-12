class AddInameToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :iname, :string
  end
end
