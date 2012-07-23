class Mountain < ActiveRecord::Base
  attr_accessible :amc_link, :elevation, :fullname, :lat, :lng, :name, :netc_link, :notes, :trailsnh_link
  
  has_many :ascents
  has_many :trips
  has_many :hikers, through: :trips
  
  def fullname
    attributes['fullname'] || name
  end
end
