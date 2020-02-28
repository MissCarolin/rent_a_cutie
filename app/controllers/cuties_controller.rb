class CutiesController < ApplicationController
  before_action :find_cutie, only: [:show ]

  def index
    if params[:search].present? && params[:search][:query].present?
      user_input = params[:search][:query]
      sql_query = "name ILIKE :query OR species ILIKE :query"
      @cuties = Cutie.where(sql_query, query: "#{user_input}")
      @cuties.geocoded

    else

      @cuties = Cutie.all.geocoded
    end

       #returns cuties with coordinates

    @markers = @cuties.map do |cutie|
      {
        lat: cutie.latitude,
        lng: cutie.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { cutie: cutie })
      }
    end
  end

  def show
    @bookings = @cutie.bookings
    @booking = Booking.new
    @booking.cutie = @cutie
  end

  def type_of
    @cuties = Cutie.where(species: params[:query])
  end

  def new
    @cutie = Cutie.new
  end

  def create
    @cutie = Cutie.new(cutie_params)
    @cutie.user = current_user
    if @cutie.save
      redirect_to dashboard_cuties_path # change made here - before: Lino cuties_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cutie.update(cutie_params)
      redirect_to cuties_path
    else
      render :edit
    end
  end

  def destroy
    @cutie.destroy
    redirect_to cuties_path
  end

  private

  def find_cutie
    @cutie = Cutie.find(params[:id])
  end

  def cutie_params
    params.require(:cutie).permit(:name, :type, :description, :species, :booking_rate, photos: [])
  end
end
