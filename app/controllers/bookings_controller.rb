class BookingsController < ApplicationController
  before_action :set_maraude, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.maraude = @maraude
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:created_at, :udpated_at, :user_id, :maraude_id)
  end


  def set_maraude
    @maraude = Maraude.find(params[:maraude_id])
  end
end
