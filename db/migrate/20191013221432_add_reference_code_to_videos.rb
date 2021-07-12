class AddReferenceCodeToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :reference_code, :integer
  end
end
