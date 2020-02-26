class DashboardController < ApplicationController
  def home
    @bookings = current_user.bookings
  end

  # def cuties
  # end
end
