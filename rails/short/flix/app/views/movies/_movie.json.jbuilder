json.extract! movie, :id, :title, :rating, :description, :cast, :duration, :total_gross, :created_at, :updated_at
json.url movie_url(movie, format: :json)
