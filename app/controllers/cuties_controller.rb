class CutiesController < ApplicationController
  before action:
  def index
    @cuties = Cutie.all
  end

  def show
    @cutie = Cutie.find(params[:id])

end
