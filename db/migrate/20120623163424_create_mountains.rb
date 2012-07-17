class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :elevation
      t.decimal :lat, :precision => 15, :scale => 12
      t.decimal :lng, :precision => 15, :scale => 12
      t.string :trailsnh_link
      t.string :netc_link
      t.string :amc_link
      t.text :notes

      t.timestamps
    end
  end
end
