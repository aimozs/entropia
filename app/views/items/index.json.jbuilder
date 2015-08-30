json.array!(@items) do |item|
  json.extract! item, :id, :name, :image, :type, :level, :ttValue, :marketValue, :volume, :resource_id
  json.url item_url(item, format: :json)
end
