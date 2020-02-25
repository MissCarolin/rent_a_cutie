class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:booking).permit(:user_id, :cutie_id, :start_date, :end_date)
  end

end
