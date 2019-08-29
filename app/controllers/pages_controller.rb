class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @maraudes = Maraude.last(6)
  end

  def dashboard
    @past_bookings = current_user.bookings.select { |booking| booking.maraude.ends_at < Date.today }
    @current_bookings = current_user.bookings.select { |booking| booking.maraude.ends_at > Date.today }


    @asso = current_user.assos.first
    @maraudes_as_owner = current_user.maraudes

    #current_user.bookings.first.maraude.asso_id => l'id de l'asso par rapport au user

  end
end
