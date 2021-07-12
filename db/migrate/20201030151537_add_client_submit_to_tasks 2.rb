class AddClientSubmitToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :client_submit, :boolean, default: false
  end
end
