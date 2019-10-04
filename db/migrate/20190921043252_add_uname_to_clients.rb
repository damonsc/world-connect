class AddUnameToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :uname, :text
  end
end
