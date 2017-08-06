class AddFieldsToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :host_name, :string
    add_column :rooms, :country, :string
  end
end
