class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.text :route
      t.float :distance

      t.timestamps
    end
  end
end
