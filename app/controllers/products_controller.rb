class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    if ( params[:catalog_id] && catalog = Catalog.find(params[:catalog_id]) )
      @product.catalog = catalog
    end
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end

  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_url, notice: 'Product was successfully destroyed.'
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to products_url, notice: 'Product not found'
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :catalog_id)
    end
end
