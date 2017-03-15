class RidesController < ApplicationController

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.create(user_id: params[:user_id],attraction_id: params[:attraction_id])
    @ride.take_ride
    attraction = @ride.attraction
    user = @ride.user
    flash[:notice] = "Thanks for riding the #{attraction.name}!"
    redirect_to user
  end

end
