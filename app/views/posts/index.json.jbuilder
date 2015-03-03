json.array!(@posts) do |post|
  json.extract! post, :id, :user, :lat, :long, :content
  json.url post_url(post, format: :json)
end
