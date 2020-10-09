class CreateConnectCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :connect_codes do |t|
      t.integer :code
      t.string :assigned

      t.timestamps
    end
  end
end
