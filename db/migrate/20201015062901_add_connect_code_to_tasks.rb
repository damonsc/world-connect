class AddConnectCodeToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :code, :integer
  end
end
