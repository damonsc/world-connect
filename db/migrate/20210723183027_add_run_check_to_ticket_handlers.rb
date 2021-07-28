class AddRunCheckToTicketHandlers < ActiveRecord::Migration[6.1]
  def change
    add_column :ticket_handlers, :run_check, :boolean, default: true
  end
end
