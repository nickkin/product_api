json.array! @catalogs do |catalog|
  json.(catalog, :id, :name, :description, :created_at, :updated_at)
end