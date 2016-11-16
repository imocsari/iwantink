class BookingsController < ApplicationController

  before_action :load_artist

  private

  def load_artist
    @artist = Artist.find(params[:artist_id])
  end

  public

  def new
      @booking = Booking.new
  end

  def create
      # Booking.create(booking_params)
      # redirect_to_artists_index
      
      @booking = Booking.new(params[:booking])
      if @booking.save
        redirect_to_artists_index
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to_artists_index
  end

  def booking_params
    # params.require(:booking).permit(:title, :company, :url)
    # @booking = Booking.new(.require(:booking).permit(:title, :company, :url)
  end

end
