json.array!(@slots) do |slot|
  json.extract! slot, :id, :name, :opentimes, :address, :description
  json.url slot_url(slot, format: :json)
end
