class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :title
      t.text :name
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
