class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @maraudes = Maraude.last(6)
  end

  def dashboard
    @past_bookings = current_user.bookings.select { |booking| booking.maraude.ends_at < Date.today }
    @current_bookings = current_user.bookings.select { |booking| booking.maraude.ends_at > Date.today }

    # @my_bookings = current_user.bookings
    # @my_maraudes = current_user.maraudes
    # raise

  end

end
