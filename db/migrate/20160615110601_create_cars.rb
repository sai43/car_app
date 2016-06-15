class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.integer :year
      t.string :color
      t.integer :wheels
      t.integer :doors

      t.timestamps null: false
    end
  end
end
