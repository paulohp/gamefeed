json.array!(@competitors) do |competitor|
  json.extract! competitor, :name, :email, :bio, :username, :city
  json.url competitor_url(competitor, format: :json)
end
