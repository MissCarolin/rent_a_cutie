class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    find_booking
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(review_params)
    @booking.user = find_user
    @booking.cutie = find_cutie
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    find_booking
  end

  def update
    @booking = Booking.new(review_params)
    if @booking.save
      redirect_to bookings_path
    else
      render :edit
    end
  end

  def destroy
    find_booking
    @booking.delete
  end

 # here comes the private stuff - set or find // users, cuties and check params

  private

  def review_params
    params.require(:booking).permit(:user_id, :cutie_id, :start_date, :end_date)
  end

  def find_user
    @user = User.find(params[:id])
  end

  def find_cutie
    @cutie = Cutie.find(params[:id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end