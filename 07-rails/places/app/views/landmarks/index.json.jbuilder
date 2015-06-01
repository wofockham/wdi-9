json.array!(@landmarks) do |landmark|
  json.extract! landmark, :id, :name, :description, :address
  json.url landmark_url(landmark, format: :json)
end
