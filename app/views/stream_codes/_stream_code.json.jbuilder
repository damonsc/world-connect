json.extract! stream_code, :id, :code, :redirect, :created_at, :updated_at
json.url stream_code_url(stream_code, format: :json)
