class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  before_action :product_params, only: %i[new create update]

  def new
    @product = Product.new
    @artists = Artist.all
  end

  def create
    @product = Product.new(product_params)
    @products = Product.all
    if @product.save
      redirect_to root_path, notice: 'Produto cadastrado com sucesso'
    else
      flash.now[:alert] = 'Não foi possível realizar o cadastro'
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def show
    @artist = Artist.find(@product.artist_id)
  end

  def edit
    @artists = Artist.all
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Alteração efetuada com sucesso'
    else
      flash.now[:alert] = 'Não foi possível realizar a alteração'
      render 'edit'
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:artist_id, :sku, :collection_name, :title, :technique, :height, :width, :year, :edition, :price, :image)
  end
 
end