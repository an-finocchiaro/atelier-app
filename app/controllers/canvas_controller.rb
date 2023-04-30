class CanvasController < ApplicationController
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

  def show
    @canva = Canva.find(params[:id])
    @artist = Artist.find(@canva.artist_id)
  end

end