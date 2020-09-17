json.extract! bill_payment, :id, :bill_amount, :group_id, :created_at, :updated_at
json.url bill_payment_url(bill_payment, format: :json)
