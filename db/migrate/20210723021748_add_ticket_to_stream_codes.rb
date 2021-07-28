class AddTicketToStreamCodes < ActiveRecord::Migration[6.1]
  def change
    add_column :stream_codes, :ticket, :integer
    add_column :stream_codes, :ticket_date, :date
  end
end
