class MyHike < ActiveRecord::Base  
  attr_accessible :hiker
  belongs_to :hiker 
  belongs_to :trip   
end
