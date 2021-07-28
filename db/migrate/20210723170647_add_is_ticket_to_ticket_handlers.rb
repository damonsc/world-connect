class AddIsTicketToTicketHandlers < ActiveRecord::Migration[6.1]
  def change
    add_column :ticket_handlers, :ticket, :string
  end
end
