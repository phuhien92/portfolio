json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :confirm_password
  json.url user_url(user, format: :json)
end
