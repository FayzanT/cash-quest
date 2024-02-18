class CreateFinances < ActiveRecord::Migration[7.1]
  def change
    create_table :finances do |t|
      t.references :child, null: false, foreign_key: true
      t.integer :balance
      t.integer :expenses

      t.timestamps
    end
  end
end
