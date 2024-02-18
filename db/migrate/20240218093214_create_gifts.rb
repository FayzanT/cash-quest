class CreateGifts < ActiveRecord::Migration[7.1]
  def change
    create_table :gifts do |t|
      t.references :child, null: false, foreign_key: true
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
