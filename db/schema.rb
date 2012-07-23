# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120723015750) do

  create_table "ascents", :id => false, :force => true do |t|
    t.integer "mountain_id"
    t.integer "trip_id"
  end

  add_index "ascents", ["mountain_id"], :name => "index_mountains_trips_on_mountain_id"
  add_index "ascents", ["trip_id"], :name => "index_mountains_trips_on_trip_id"

  create_table "hikers", :force => true do |t|
    t.string   "name"
    t.date     "born_on"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mountains", :force => true do |t|
    t.string   "name"
    t.integer  "elevation"
    t.decimal  "lat",           :precision => 15, :scale => 12
    t.decimal  "lng",           :precision => 15, :scale => 12
    t.string   "trailsnh_link"
    t.string   "netc_link"
    t.string   "amc_link"
    t.text     "notes"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "fullname"
    t.boolean  "is_nh4k"
  end

  create_table "my_hikes", :id => false, :force => true do |t|
    t.integer "hiker_id"
    t.integer "trip_id"
  end

  add_index "my_hikes", ["hiker_id"], :name => "index_hikers_trips_on_hiker_id"
  add_index "my_hikes", ["trip_id"], :name => "index_hikers_trips_on_trip_id"

  create_table "trips", :force => true do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.text     "route"
    t.float    "distance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
