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

  def isabelle
    @artist = Artist.find(1)
    @canvas = Canva.where(artist_id: 1)
  end

  def emile
    @artist = Artist.find(2)
    @canvas = Canva.where(artist_id: 2)
  end

  def verena
    @artist = Artist.find(3)
    @canvas = Canva.where(artist_id: 3)
  end

  def isabelle_bio
  end
  
  def emile_bio
  end

  def verena_bio
  end
end