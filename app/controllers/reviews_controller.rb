class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:review_id])
  end

  def new
    @review = Review.new
    @cutie = Cutie.find(@booking[:cutie_id])
  end

  def create
    @cutie = Booking.find(params[:booking_id]).cutie
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to cuty_path(@cutie)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :title, :owner_rating, :animal_rating, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
