class AttractionsController < ApplicationController

before_action :authenticate_user

  def index
    @attractions = Attraction.all
    @attraction = Attraction.new
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to @attraction
  end

  def show
    @attraction = Attraction.find(params[:id])
    @user = current_user
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(attraction_params)
    redirect_to @attraction
  end

private

  def attraction_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height, :picture)
  end
end
