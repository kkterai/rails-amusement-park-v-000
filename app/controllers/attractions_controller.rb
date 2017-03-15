class AttractionsController < ApplicationController

before_action :authenticate_user

  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
    @user = current_user
  end

end
