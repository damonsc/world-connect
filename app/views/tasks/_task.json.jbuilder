json.extract! task, :id, :description, :status, :complete, :created_at, :updated_at
json.url task_url(task, format: :json)
