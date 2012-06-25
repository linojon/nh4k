class CreateHikers < ActiveRecord::Migration
  def change
    create_table :hikers do |t|
      t.string :name

      t.timestamps
    end
  end
end
