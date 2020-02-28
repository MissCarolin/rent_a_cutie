class DashboardController < ApplicationController
  def home
    @bookings = current_user.bookings
  end

  def cuties
    @user = current_user
    @cuties = current_user.cuties
  end

end
