json.array!(@championships) do |championship|
  json.extract! championship, :name, :game, :date, :number_competitors, :description
  json.url championship_url(championship, format: :json)
end
