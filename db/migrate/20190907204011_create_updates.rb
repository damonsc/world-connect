class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.string :title
      t.text :status
      t.text :creater
      t.datetime :time

      t.timestamps
    end
  end
end
