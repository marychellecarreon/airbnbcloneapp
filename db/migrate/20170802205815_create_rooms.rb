class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.references :user, foreign_key: true
      t.integer :price
      t.integer :room_id
      t.string :room_name
      t.text :description
      t.string :location
      t.integer :bed
      t.integer :bathroom
      t.integer :capacity
      t.boolean :pets
      t.boolean :smoking
      t.boolean :wifi

      t.timestamps
    end
  end
end
