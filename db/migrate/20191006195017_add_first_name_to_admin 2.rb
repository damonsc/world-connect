class AddFirstNameToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :first_name, :text
  end
end
