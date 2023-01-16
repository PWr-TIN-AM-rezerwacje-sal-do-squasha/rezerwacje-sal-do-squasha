json.extract! transaction, :id, :transaction, :value, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
