class AddIsTicketToStreamQueries < ActiveRecord::Migration[6.1]
  def change
    add_column :stream_queries, :is_ticket, :boolean, default: false
  end
end
