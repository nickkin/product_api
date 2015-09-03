Catalog.create!([
  {name: "Обувь", description: "Обувь хорошая"},
  {name: "Обувь б\\у", description: "Плохая обувь"},
  {name: "Носки", description: "Носки замечательные"},
  {name: "Носки порванные", description: "Очень неудачные носки"}
])
Product.create!([
  {name: "Обувь 1", description: "Обувь 1 описание", price: "100.0", catalog_id: 1},
  {name: "Обувь 2", description: "Обувь 2 описание", price: "100.0", catalog_id: 1},
  {name: "Обувь б\\у 1", description: "Обувь б\\у 1 описание", price: "10.0", catalog_id: 2},
  {name: "Обувь б\\у 2", description: "Обувь б\\у 2 описание", price: "10.0", catalog_id: 2},
  {name: "Носки 1", description: "Носки 1 описание", price: "100.0", catalog_id: 3},
  {name: "Носки 2", description: "Носки 2 описание", price: "100.0", catalog_id: 3},
  {name: "Носки порванные 1", description: "Носки порванные 1 описание", price: "10.0", catalog_id: 4},
  {name: "Носки порванные 2", description: "Носки порванные 2 описание", price: "10.0", catalog_id: 4}
])
