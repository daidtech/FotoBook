json.extract! user_test, :id, :name, :email, :login, :created_at, :updated_at
json.url user_test_url(user_test, format: :json)
