json.array!(@histories) do |history|
  json.extract! history, :id, :date, :signs, :treatment, :animal_id
  json.url history_url(history, format: :json)
end
