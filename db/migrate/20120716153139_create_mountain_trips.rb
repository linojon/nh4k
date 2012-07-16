class CreateMountainTrips < ActiveRecord::Migration
  def change
    create_table :mountain_trips, :id => false do |t|
      t.references :mountain
      t.references :trip

      t.timestamps
    end
    add_index :mountain_trips, :mountain_id
    add_index :mountain_trips, :trip_id
  end
end
