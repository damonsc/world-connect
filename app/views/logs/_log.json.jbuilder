json.extract! log, :id, :date_of_session, :time_of_sesion, :details, :reference_code, :created_at, :updated_at
json.url log_url(log, format: :json)
