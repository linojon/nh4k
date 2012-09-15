class Trip < ActiveRecord::Base
  attr_accessible :distance, :end_at, :start_at, :route, :hiker_ids, :mountain_ids

  has_many :ascents
  has_many :mountains, through: :ascents
  has_many :my_hikes
  has_many :hikers, through: :my_hikes

  scope :for_hiker, lambda {|hiker| joins(:my_hikes).where(my_hikes: { hiker_id: hiker.id } ) } 

end
