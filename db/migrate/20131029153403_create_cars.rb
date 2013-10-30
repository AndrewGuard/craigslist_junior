class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :price
      t.string :make
      t.string :model
      t.integer :owner_id
      t.timestamps
    end
  end
end
