json.extract! log, :id, :log_date, :log_time, :location, :participant, :sensor_type, :reading, :observation, :img, :created_at, :updated_at
json.url log_url(log, format: :json)
