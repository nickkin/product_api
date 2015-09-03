class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :edit, :update, :destroy]

  def index
    @catalogs = Catalog.all
  end

  def show
  end

  def new
    @catalog = Catalog.new
  end

  def edit
  end

  def create
    @catalog = Catalog.new(catalog_params)

    if @catalog.save
      redirect_to @catalog, notice: 'Catalog was successfully created.'
    else
      render :new
    end
  end

  def update
    if @catalog.update(catalog_params)
      redirect_to @catalog, notice: 'Catalog was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @catalog.destroy
      redirect_to catalogs_url, notice: 'Catalog was successfully destroyed.'
    end
  end

  private
    def set_catalog
      @catalog = Catalog.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to catalogs_url, notice: 'Catalog not found'
    end

    def catalog_params
      params.require(:catalog).permit(:name, :description)
    end
end
