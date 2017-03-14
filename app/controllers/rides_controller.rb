class RidesController < ApplicationController

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new
    binding.pry
    @ride.take_ride
    redirect_to user
  end

end
