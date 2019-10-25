class RemoveTimeOfSesionFromLogs < ActiveRecord::Migration[6.0]
  def change

    remove_column :logs, :TimeOfSesion, :time
  end
end
