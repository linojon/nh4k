class CreateHikerTrips < ActiveRecord::Migration
  def change
    create_table :hikers_trips, :id => false do |t|
      t.references :hiker
      t.references :trip
    end
    add_index :hikers_trips, :hiker_id
    add_index :hikers_trips, :trip_id
  end
end
