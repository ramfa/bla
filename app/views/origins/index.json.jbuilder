json.array!(@origins) do |origin|
  json.extract! origin, :id, :colector, :address, :feeding, :capmethod, :features, :province_id
  json.url origin_url(origin, format: :json)
end
