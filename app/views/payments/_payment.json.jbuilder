json.extract! payment, :id, :reason, :amount, :date, :reference_code, :created_at, :updated_at
json.url payment_url(payment, format: :json)
