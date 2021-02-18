class AddBriefToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :brief, :string
  end
end
