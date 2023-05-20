class CanvasController < ApplicationController
  before_action :set_canva, only: %i[show available collection sold update edit]
  def new
    @canva = Canva.new
    @artists = Artist.all
  end

  def create
    canva_params = params.require(:canva).permit(:artist_id, :code, :collection_name, :title, :technique, :height, :width, :year, :frame, :price, :image)
    @canva = Canva.new(canva_params)
    @canvas = Canva.all
    if @canva.save
      redirect_to @canva, notice: 'Tela cadastrada com sucesso'
    else
      flash.now[:alert] = 'Não foi possível realizar o cadastro'
      render :new
    end
  end

  def index
    @canvas = Canva.all
  end

  def show
    @canva = Canva.find(params[:id])
    @artist = Artist.find(@canva.artist_id)
  end

  def available
    @canva.available!
    redirect_to @canva, notice: 'Alteração efetuada com sucesso, tela disponível'
  end

  def collection
    @canva.collection!
    redirect_to @canva, notice: 'Alteração efetuada com sucesso, tela em acervo'
  end

  def sold
    @canva.sold!
    redirect_to @canva, notice: 'Alteração efetuada com sucesso, tela vendida'
  end

  private

  def set_canva
    @canva = Canva.find(params[:id])
  end

end