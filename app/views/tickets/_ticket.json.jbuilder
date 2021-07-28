json.extract! ticket, :id, :event, :code, :date, :amount, :is_ticket, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
