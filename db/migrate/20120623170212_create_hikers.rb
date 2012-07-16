class CreateHikers < ActiveRecord::Migration
  def change
    create_table :hikers do |t|
      t.string :name
      t.date :born_on
      t.timestamps
    end
  end
end
