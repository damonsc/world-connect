class AddReferenceCodeToUpdates < ActiveRecord::Migration[6.0]
  def change
    add_column :updates, :reference_code, :integer
  end
end
