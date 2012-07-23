class MyHike < ActiveRecord::Base  
  belongs_to :hiker 
  belongs_to :trip   
end
