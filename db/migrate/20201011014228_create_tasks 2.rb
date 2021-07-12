class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :status
      t.boolean :complete

      t.timestamps
    end
  end
end
