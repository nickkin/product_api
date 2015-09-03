class ApiController < ApplicationController
  respond_to :json

  def list_catalog
    @catalogs = Catalog.all
  end

  def list_product
    @products = Catalog.find(params[:catalog_id]).products
  end
end
