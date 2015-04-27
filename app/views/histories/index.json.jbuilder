json.array!(@histories) do |history|
  json.extract! history, :id, :animal_id, :tratamiento_id
  json.url history_url(history, format: :json)
end
