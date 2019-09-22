class AddIntendedUserToUploads < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :intended_user, :string
  end
end
