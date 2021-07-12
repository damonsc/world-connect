class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.date :date_of_session
      t.time :time_of_sesion
      t.string :details
      t.integer :reference_code

      t.timestamps
    end
  end
end
