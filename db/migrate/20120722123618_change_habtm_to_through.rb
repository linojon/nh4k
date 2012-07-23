class ChangeHabtmToThrough < ActiveRecord::Migration
  def up
  	rename_table :mountains_trips, :ascents
  	rename_table :hikers_trips, :my_hikes 
  end

  def down
  end
end
