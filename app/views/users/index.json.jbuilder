json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :salt, :email, :bm, :roles, :reviews_count
  json.url user_url(user, format: :json)
end
