json.extract! user, :id, :user_name, :user_localization_lat, :user_localization_long, :user_email, :user_rol, :user_password, :created_at, :updated_at
json.url user_url(user, format: :json)
