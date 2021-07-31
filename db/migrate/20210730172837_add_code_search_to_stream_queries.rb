class AddCodeSearchToStreamQueries < ActiveRecord::Migration[6.1]
  def change
    add_column :stream_queries, :code_input, :string
    add_column :stream_queries, :string, :string
  end
end
