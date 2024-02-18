class CreateTaskLists < ActiveRecord::Migration[7.1]
  def change
    create_table :task_lists do |t|
      t.string :title
      t.integer :price
      t.boolean :completed

      t.timestamps
    end
  end
end
