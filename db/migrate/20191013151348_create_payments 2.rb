class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :reason
      t.text :amount
      t.date :date
      t.integer :reference_code

      t.timestamps
    end
  end
end
