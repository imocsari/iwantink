class ArtistsController < ApplicationController
  #skip_before_action :authenticate_user!, only: [ :index, :show ]

  before_filter :authenticate_user!, :except => [:show, :index]


def index
    @artists = Artist.all
  end

  # GET /artists/1
  def show
    @artist = Artist.find(params[:id])
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update_attributes(artist_params)
      redirect_to artist_path(@artist)
    else
      render 'edit'
    end
  end



  # POST /artists
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
    def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artist_path(@artist)
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def artist_params
    params.require(:artist).permit(:first_name, :last_name, :picture, photos: [])
  end
end
