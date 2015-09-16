json.array!(@lodes) do |lode|
  json.extract! lode, :id, :latitude, :longitude, :size
  json.url lode_url(lode, format: :json)
end
