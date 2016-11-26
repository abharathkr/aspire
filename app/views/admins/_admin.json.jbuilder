json.extract! admin, :id, :email, :user_name, :created_at, :updated_at
json.url admin_url(admin, format: :json)