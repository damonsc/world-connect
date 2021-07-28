class AddTicketToStreamQueries < ActiveRecord::Migration[6.1]
  def change
    add_column :stream_queries, :ticket, :integer
    add_column :stream_queries, :ticket_date, :date
  end
end
