class BookingsController < ApplicationController
  before_action :set_maraude, only: [:new, :create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.maraude = @maraude
    current_user.update(user_params)
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

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
  end


end
