json.array!(@medicins) do |medicin|
  json.extract! medicin, :id, :nombre, :droga, :cantidad, :tratamiento_id
  json.url medicin_url(medicin, format: :json)
end
