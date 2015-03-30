json.array!(@entries) do |entry|
  json.extract! entry, :id, :dateof, :origin_id, :animal_id
  json.url entry_url(entry, format: :json)
end
