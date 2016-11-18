class BookingsController < ApplicationController

  before_action :load_artist, only: [ :new, :create ]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      UserMailer.welcome(booking_params[:email]).deliver_now
      redirect_to booking_path(@booking)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to_artists_index
  end

  private

  def load_artist
    @artist = Artist.find(params[:artist_id])
  end

  def booking_params
    params.require(:booking).permit(:name, :email, :contact, :tattoo_place, :budget, :prefered_date, :description)
  end
end
