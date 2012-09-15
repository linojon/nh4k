class Mountain < ActiveRecord::Base
  attr_accessible :amc_link, :elevation, :fullname, :lat, :lng, :name, :netc_link, :notes, :trailsnh_link, :is_nh4k
  
  has_many :ascents
  has_many :trips, through: :ascents
  has_many :hikers, through: :trips
  
  def fullname
    attributes['fullname'] || name
  end
end
