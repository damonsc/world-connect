class AddLocationToLinks < ActiveRecord::Migration[6.0]
  def change
    add_column :links, :location, :integer
  end
end
