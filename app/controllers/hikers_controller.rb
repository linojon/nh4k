class HikersController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  expose(:hikers) { Hiker.all }
  expose(:hiker)

  def create
    if hiker.save
      redirect_to(hiker)
    else
      render :new
    end
  end

  def update
    if hiker.save
      redirect_to(hiker)
    else
      render :edit
    end
  end
end
