class Ascent < ActiveRecord::Base  
  attr_accessible :mountain
  belongs_to :mountain 
  belongs_to :trip   
end
