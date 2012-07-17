class AddLongnameToMountains < ActiveRecord::Migration
  def change
    add_column :mountains, :fullname, :string
    add_column :mountains, :is_nh4k, :boolean
    rename_column :mountains, :trailsnh_link, :trailsnh_link
  end
end
