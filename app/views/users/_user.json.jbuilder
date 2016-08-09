json.extract! user, :id, :first_name, :last_name, :location, :party, :email, :profile_pic, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)