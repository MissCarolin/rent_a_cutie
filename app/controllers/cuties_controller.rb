class CutiesController < ApplicationController

  before action:
  before_action :find_cutie, only: [:show ]
  def index
    @cuties = Cutie.all
  end

  def show
  end

  def type_of
    @cuties = Cutie.where(race: params[:query])
  end

  def new
    @cutie = Cutie.new
  end

  def create
    @cutie = Cutie.new(cutie_params)
    if @cutie.save
      redirect_to cuties_path
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
    params.require(:cuties).permit(:name, :type, :description, :booking_rate)
  end
end
