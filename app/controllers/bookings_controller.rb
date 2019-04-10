class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @booking.passengers.build
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to @booking
    else
      flash[:danger] = "An error occurred during booking confirmation, please try again."
      redirect_to root_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private 

    def booking_params
      params.require(:booking).permit(:flight_id,
        :passengers_attributes => [:name, :email])
    end

end
