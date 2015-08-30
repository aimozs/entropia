json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :resourceType, :ttValue, :marketValue
  json.url resource_url(resource, format: :json)
end
