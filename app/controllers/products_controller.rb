class ProductsController < ApplicationController
  def new
    @product = Product.new
    @artists = Artist.all
  end

  def create
    product_params = params.require(:product).permit(:artist_id, :sku, :collection_name, :title, :technique, :height, :width, :year, :edition, :price, :image)
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
 
end