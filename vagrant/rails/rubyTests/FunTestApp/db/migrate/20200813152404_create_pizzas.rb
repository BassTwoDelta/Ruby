class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :crust
      t.string :sauce
      t.integer :size

      t.timestamps null: false
    end
  end
end
