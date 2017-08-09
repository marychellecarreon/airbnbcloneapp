json.extract! booking, :id, :start_date, :end_date, :price, :totalprice, :room_id, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
