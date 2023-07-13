class CanvasController < ApplicationController
  before_action :set_canva, only: %i[show available collection sold hide exhibit edit update]
  before_action :canva_params, only: %i[create update]
  def new
    @canva = Canva.new
    @artists = Artist.all
  end

  def create
    @canva = Canva.new(canva_params)
    @canvas = Canva.all
    if @canva.save
      redirect_to '/admin', notice: 'Tela cadastrada com sucesso'
    else
      flash.now[:alert] = 'Não foi possível realizar o cadastro'
      render :new
    end
  end

  def index
    @canvas = Canva.all
  end

  def show
    @artist = Artist.find(@canva.artist_id)
  end

  def edit
    @artists = Artist.all
  end

  def update
    @canva = Canva.find(params[:id])
    if @canva.update(canva_params)
      redirect_to @canva, notice: 'Alteração efetuada com sucesso'
    else
      flash.now[:alert] = 'Não foi possível realizar a alteração'
      render 'edit'
    end
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

  def hide
    @canva.hide!
    redirect_to @canva, notice: 'Alteração efetuada com sucesso, tela não será exibida'
  end

  def exhibit
    @canva.exhibit!
    redirect_to @canva, notice: 'Alteração efetuada com sucesso, tela será exibida'
  end

  private

  def set_canva
    @canva = Canva.find(params[:id])
  end

  def canva_params
    params.require(:canva).permit(:artist_id, :code, :collection_name, :title, :technique, :height, :width, :year, :frame, :price, :image)
  end

end