class ReviewsController < ApplicationController
  bevore_action :set_booking

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
    redirect_to booking_path(@booking)
  else
    render :new
  end

  private

  def review_params
    params.require(:review).permit(:content, :title, :owner_rating, :animal_rating, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
