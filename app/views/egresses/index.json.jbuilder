json.array!(@egresses) do |egress|
  json.extract! egress, :id, :date, :cause, :reproduction, :age, :causedeath, :observations, :animal_id
  json.url egress_url(egress, format: :json)
end
