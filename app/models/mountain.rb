class Mountain < ActiveRecord::Base
  attr_accessible :amc_link, :elevation, :lat, :lng, :name, :netc_link, :notes, :trainsnh_link
  
  has_and_belongs_to_many :trips
  has_many :hikers, through: :trips
  
end
