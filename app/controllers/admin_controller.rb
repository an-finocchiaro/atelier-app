class AdminController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    artist_id = params[:param]
    @artist = Artist.find(artist_id)
    @canvas = Canva.where(artist_id: artist_id)
  end
end