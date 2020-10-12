class AddNoteToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :note, :string
  end
end
