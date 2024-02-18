class CreateChildren < ActiveRecord::Migration[7.1]
  def change
    create_table :children do |t|
      t.references :user, null: false, foreign_key: true
      t.string :username

      t.timestamps
    end
  end
end
