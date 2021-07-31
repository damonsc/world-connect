class AddBackupCharToTicketHandlers < ActiveRecord::Migration[6.1]
  def change
    add_column :ticket_handlers, :backup_char, :string
  end
end
