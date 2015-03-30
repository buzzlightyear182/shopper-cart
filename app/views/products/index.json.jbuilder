json.array!(@products) do |product|
  json.extract! product, :id
  json.extract! product, :title
  json.extract! product, :price
  json.extract! product, :image
  json.extract! product, :body
  json.url product_url(product, format: :json)
end
