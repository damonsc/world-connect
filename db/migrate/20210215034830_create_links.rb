class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :content_link
      t.string :image_link
      t.integer :content_code_matcher

      t.timestamps
    end
  end
end
