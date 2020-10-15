class AddClientCodeToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :client_code, :integer
  end
end
