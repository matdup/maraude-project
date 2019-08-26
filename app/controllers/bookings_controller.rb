class BookingsController < ApplicationController

def index
    @bookings = Booking.all
  end

  def new
    @maraude = Maraude.find(params[:maraude_id])
    @booking = Booking.new
  end

  def create
    @maraude = Maraude.find(params[:maraude_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.maraude = @maraude
    @booking.status = "pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @maraude = Maraude.find(@booking.maraude_id)
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :maraude_id, :status)
  end
end
