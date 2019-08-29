class BookingsController < ApplicationController
  before_action :set_maraude, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.maraude = @maraude
    # raise
    if @booking.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def set_maraude
    @maraude = Maraude.find(params[:maraude_id])
  end
end
