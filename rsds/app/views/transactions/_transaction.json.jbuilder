json.extract! transaction, :id, :transactionDate, :value, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
