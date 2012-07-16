class Trip < ActiveRecord::Base
  attr_accessible :distance, :end_at, :start_at, :route

  has_and_belongs_to_many :hikers
  has_and_belongs_to_many :mountains
end
