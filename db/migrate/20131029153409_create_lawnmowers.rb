class CreateLawnmowers < ActiveRecord::Migration
  def change
    create_table :lawnmowers do |t|
      t.integer :price
      t.string :make
      t.string :model
      t.integer :owner_id
      t.timestamps
    end
  end
end
