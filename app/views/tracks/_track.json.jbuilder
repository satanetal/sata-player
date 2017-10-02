json.extract! track, :id, :title, :author, :album, :year, :format, :file_link, :track_time, :created_at, :updated_at
json.url track_url(track, format: :json)
