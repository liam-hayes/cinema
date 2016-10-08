json.extract! seat_booking, :id, :booking_id, :seat_id, :type, :price, :created_at, :updated_at
json.url seat_booking_url(seat_booking, format: :json)