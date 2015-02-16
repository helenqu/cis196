json.array!(@users) do |user|
  json.extract! user, :id, :name, :posts
  json.url user_url(user, format: :json)
end
