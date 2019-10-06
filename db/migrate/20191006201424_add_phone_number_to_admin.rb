class AddPhoneNumberToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :phone_number, :text
  end
end
