class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
      @cuties = Cutie.all
  end
end
