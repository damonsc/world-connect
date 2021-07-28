class CreateTicketHandlers < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_handlers do |t|
      t.string :event
      t.integer :code
      t.date :date
      t.integer :amount
      t.boolean :is_ticket, default: true

      t.timestamps
    end
  end
end
