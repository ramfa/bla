json.array!(@tratamientos) do |tratamiento|
  json.extract! tratamiento, :id, :fecha, :signos_clinicos, :commonname_id
  json.url tratamiento_url(tratamiento, format: :json)
end
