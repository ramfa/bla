json.array!(@commonnames) do |commonname|
  json.extract! commonname, :id, :name, :kind_id
  json.url commonname_url(commonname, format: :json)
end
