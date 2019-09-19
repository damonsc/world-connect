class AddRolesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :roles, :text
  end
end
