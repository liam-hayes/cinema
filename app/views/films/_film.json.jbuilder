json.extract! film, :id, :title, :run_time, :genre, :rating, :image, :created_at, :updated_at
json.url film_url(film, format: :json)