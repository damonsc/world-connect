class AddExecToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :exec, :boolean
  end
end
