class CreateStreamCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :stream_codes do |t|
      t.integer :code
      t.string :redirect

      t.timestamps
    end
  end
end
