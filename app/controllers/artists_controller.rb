class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    artist_params = params.require(:artist).permit(:name)
    @artist = Artist.new(artist_params)
    @artists = Artist.all
    if @artist.save
      redirect_to @artist, notice: 'Artista cadastrado com sucesso'
    else
      flash.now[:alert] = 'Não foi possível realizar o cadastro'
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end
  
end