class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist.id)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
  end

  private

    def artist_params
      params.require(:artist).permit(:name)
    end
end
