class AddClientCodeMatcherToLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :client_code_matcher, :int
  end
end
