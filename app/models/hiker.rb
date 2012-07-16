class Hiker < ActiveRecord::Base
  attr_accessible :name, :born_on
  
  has_and_belongs_to_many :trips
  has_many :mountains, through: :trips
  
end
