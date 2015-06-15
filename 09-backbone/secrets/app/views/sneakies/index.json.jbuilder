json.array!(@sneakies) do |sneaky|
  json.extract! sneaky, :id, :content
  json.url sneaky_url(sneaky, format: :json)
end
