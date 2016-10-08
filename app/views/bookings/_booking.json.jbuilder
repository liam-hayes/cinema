json.extract! booking, :id, :person_id, :screening_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)