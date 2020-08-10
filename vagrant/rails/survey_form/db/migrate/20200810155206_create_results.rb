class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.string :location
      t.string :fave_lang
      t.string :comment

      t.timestamps null: false
    end
  end
end
