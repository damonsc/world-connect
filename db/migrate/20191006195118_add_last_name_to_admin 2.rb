class AddLastNameToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :last_name, :text
  end
end
