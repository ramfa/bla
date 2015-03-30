json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :weight, :numbertag, :microchip, :capturedate, :age, :commonname_id
  json.url animal_url(animal, format: :json)
end
