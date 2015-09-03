json.array! @products do |catalog|
  json.(catalog, :id, :name, :description, :price, :created_at, :updated_at)
end