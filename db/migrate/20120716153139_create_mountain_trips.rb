class CreateMountainTrips < ActiveRecord::Migration
  def change
    create_table :mountains_trips, :id => false do |t|
      t.references :mountain
      t.references :trip
    end
    # add_index :mountains_trips, :mountain_id
    # add_index :mountains_trips, :trip_id
  end
end
