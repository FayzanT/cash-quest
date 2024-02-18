class AddChildIdToTaskList < ActiveRecord::Migration[7.1]
  def change
    add_reference :task_lists, :child, null: false, foreign_key: true
  end
end
