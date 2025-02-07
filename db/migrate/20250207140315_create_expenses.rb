class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.string :title
      t.date :data
      t.float :amount
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
