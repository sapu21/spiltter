json.extract! user, :id, :name, :money_to_be_paid, :pending, :created_at, :updated_at
json.url user_url(user, format: :json)
