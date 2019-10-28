class AddInameToLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :logs, :iname, :string
  end
end
