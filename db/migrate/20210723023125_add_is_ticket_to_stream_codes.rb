class AddIsTicketToStreamCodes < ActiveRecord::Migration[6.1]
  def change
    add_column :stream_codes, :is_ticket, :boolean, default: false
  end
end
