json.extract! ticket_handler, :id, :event, :code, :date, :amount, :is_ticket, :created_at, :updated_at
json.url ticket_handler_url(ticket_handler, format: :json)
