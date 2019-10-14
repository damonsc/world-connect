class AddReferenceCodeToUploads < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :reference_code, :integer
  end
end
