class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :elevation
      t.decimal :lat, :precision => 15, :scale => 12
      t.decimal :lng, :precision => 15, :scale => 12
      t.string :trainsnh
      t.string :netc
      t.string :amc
      t.text :notes

      t.timestamps
    end
  end
end
