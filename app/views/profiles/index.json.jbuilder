json.array!(@profiles) do |profile|
  json.extract! profile, :id, :firstName, :lastName, :linkPhoto, :linkGoogle, :dob, :user_id
  json.url profile_url(profile, format: :json)
end
