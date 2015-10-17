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

ActiveRecord::Schema.define(version: 20151016071345) do

  create_table "betslips", force: :cascade do |t|
    t.integer  "winnings_cents", default: 0, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "stake_cents",    default: 0, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "winnings"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "home"
    t.string   "away"
    t.string   "type"
    t.string   "bet"
    t.string   "match_id"
    t.integer  "betslip_id"
    t.integer  "stake_cents", default: 0, null: false
  end

  add_index "games", ["betslip_id"], name: "index_games_on_betslip_id"

  create_table "tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
