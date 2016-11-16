class BookingsController < ApplicationController

  def new
      @booking = Booking.new
  end

  def create
      # Booking.create(booking_params)
      # redirect_to_
  end

  def destroy

  end

end
