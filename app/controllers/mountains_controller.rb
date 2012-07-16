class MountainsController < ApplicationController
  expose(:mountains) { Mountain.all }
  expose(:mountain)

  def create
    if mountain.save
      redirect_to(mountain)
    else
      render :new
    end
  end

  def update
    if mountain.save
      redirect_to(mountain)
    else
      render :edit
    end
  end
end
