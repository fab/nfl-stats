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

ActiveRecord::Schema.define(version: 20150220173711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stats", force: true do |t|
    t.string   "title"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_stats", force: true do |t|
    t.integer  "team_id"
    t.integer  "stat_id"
    t.integer  "value"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_stats", ["stat_id"], name: "index_team_stats_on_stat_id", using: :btree
  add_index "team_stats", ["team_id"], name: "index_team_stats_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "color_scheme", array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
