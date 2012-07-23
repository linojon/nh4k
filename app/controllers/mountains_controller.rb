class MountainsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  expose(:mountains) { Mountain.order('elevation DESC') }
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
