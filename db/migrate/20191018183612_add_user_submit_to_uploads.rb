class AddUserSubmitToUploads < ActiveRecord::Migration[6.0]
  def change
    add_column :uploads, :user_submit, :string
  end
end
