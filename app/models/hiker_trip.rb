class HikerTrip < ActiveRecord::Base
  belongs_to :hiker
  belongs_to :trip
end
