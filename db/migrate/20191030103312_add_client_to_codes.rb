class AddClientToCodes < ActiveRecord::Migration[6.0]
  def change
    add_column :codes, :client, :string
  end
end
