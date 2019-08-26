class UsersController < ApplicationController
def dashboard
    @maraudes = current_user.maraudes
    @bookings = current_user.bookings
    @my_bookings = current_user.bookings_as_owner
  end

end
