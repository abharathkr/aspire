json.extract! email, :id, :email, :name, :created_at, :updated_at
json.url email_url(email, format: :json)