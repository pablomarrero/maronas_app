json.array!(@promotions) do |slot|
  json.extract! promotion, :id, :name, :description
  json.url promotion_url(promotion, format: :json)
end
