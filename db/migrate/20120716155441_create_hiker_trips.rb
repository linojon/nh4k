class CreateHikerTrips < ActiveRecord::Migration
  def change
    create_table :hiker_trips do |t|
      t.references :hiker
      t.references :trip

      t.timestamps
    end
    add_index :hiker_trips, :hiker_id
    add_index :hiker_trips, :trip_id
  end
end
