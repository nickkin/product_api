Rails.application.routes.draw do
  resources :products
  resources :catalogs

  scope format: 'json', constraints: { format: 'json' } do
    get 'list_catalog', to: 'api#list_catalog', as: 'list_catalog'
    get 'list_product/:catalog_id', to: 'api#list_product', as: 'list_product'
  end
end
