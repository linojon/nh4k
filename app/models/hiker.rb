class Hiker < ActiveRecord::Base
  attr_accessible :name, :born_on
  
  has_many :my_hikes
  has_many :trips, through: :my_hikes
  has_many :ascents, through: :trips
  has_many :mountains, through: :ascents

end
