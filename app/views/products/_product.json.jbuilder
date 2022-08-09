json.extract! product, :id, :name, :cuisine, :price, :description, :ingredients, :created_at, :updated_at
json.url product_url(product, format: :json)
