json.array!(@properties) do |property|
  json.extract! property, :id, :title, :location, :space_size, :price, :description, :image_url
  json.url property_url(property, format: :json)
end
