class CreateStreamQueries < ActiveRecord::Migration[6.1]
  def change
    create_table :stream_queries do |t|
      t.integer :code

      t.timestamps
    end
  end
end
