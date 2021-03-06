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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 8) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "cost",        null: false
    t.integer "location_id"
  end

  create_table "activities_entertainment", id: false, force: :cascade do |t|
    t.integer "activity_id",      null: false
    t.integer "entertainment_id", null: false
  end

  create_table "activities_entertainments", id: false, force: :cascade do |t|
    t.integer "entertainment_id", null: false
    t.integer "activity_id",      null: false
  end

  create_table "activities_locations", id: false, force: :cascade do |t|
    t.integer "location_id", null: false
    t.integer "activity_id", null: false
  end

  create_table "entertainments", force: :cascade do |t|
    t.string "name"
    t.string "entertainment_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string  "name",             null: false
    t.integer "trip_id"
    t.integer "entertainment_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "trip_id"
    t.string "entertainment_id"
  end

end
