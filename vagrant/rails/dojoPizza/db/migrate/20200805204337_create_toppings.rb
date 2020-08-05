class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.integer :price
      t.references :pizza, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
