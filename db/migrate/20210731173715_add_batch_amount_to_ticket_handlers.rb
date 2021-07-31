class AddBatchAmountToTicketHandlers < ActiveRecord::Migration[6.1]
  def change
    add_column :ticket_handlers, :batch_amount, :integer
  end
end
