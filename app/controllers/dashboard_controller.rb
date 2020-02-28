class DashboardController < ApplicationController
  def home
    @bookings = current_user.bookings
  end

  # def cuties
  #   @cuties = cuties.current_user
  # end

end
