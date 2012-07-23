class TripsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  expose(:trips) { Trip.all }
  expose(:trip)

  def create
    if trip.save
      redirect_to(trip)
    else
      render :new
    end
  end

  def update
    if trip.save
      redirect_to(trip)
    else
      render :edit
    end
  end
end
