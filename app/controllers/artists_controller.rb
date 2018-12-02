class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to @artist
    else
      render 'new'
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :birth, :bio, :photo)
  end
end
