class ChangeHbtmToThrough < ActiveRecord::Migration
  def up
    drop_table :ascents
    drop_table :my_hikes
    create_table :ascents do |t|
      t.integer :mountain_id
      t.integer :trip_id
    end
    create_table :my_hikes do |t|
      t.integer :hiker_id
      t.integer :trip_id
    end
  end

  def down
    create_table "ascents", :id => false do |t|
      t.integer "mountain_id"
      t.integer "trip_id"
    end
    create_table "my_hikes", :id => false do |t|
      t.integer "hiker_id"
      t.integer "trip_id"
    end

  end
end
