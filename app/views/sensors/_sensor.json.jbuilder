json.extract! sensor, :id, :sensor_name, :sensor_type, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)
