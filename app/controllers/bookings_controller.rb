class BookingsController < ApplicationController

  def new
      @booking = Booking.new
  end

  def create
      Booking.create(booking_params)
      redirect_to_artists_index
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to_artists_index
  end

  def booking_params
    params.require(:booking).permit()
  end
end

end
