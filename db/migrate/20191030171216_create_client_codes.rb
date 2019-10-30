class CreateClientCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :client_codes do |t|
      t.string :client
      t.integer :code

      t.timestamps
    end
  end
end
