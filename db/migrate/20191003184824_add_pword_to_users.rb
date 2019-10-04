class AddPwordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pword, :text
  end
end
