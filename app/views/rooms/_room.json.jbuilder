json.extract! room, :id, :user_id, :price, :room_id, :room_name, :description, :location, :bed, :bathroom, :capacity, :pets, :smoking, :wifi, :created_at, :updated_at
json.url room_url(room, format: :json)
