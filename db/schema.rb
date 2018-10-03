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

ActiveRecord::Schema.define(version: 2018_10_01_202347) do

  create_table "games", force: :cascade do |t|
    t.integer "period_counter", default: 0
    t.integer "home_score", default: 0
    t.integer "away_score", default: 0
    t.string "game_updates", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "player_team"
    t.string "position"
    t.integer "overall_rating"
    t.integer "price"
    t.integer "ppg"
    t.integer "off_rating"
    t.integer "def_rating"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name_1"
    t.string "name_2"
    t.integer "wins", default: 0
    t.integer "losses", default: 0
    t.string "smack_talk_1"
    t.string "smack_talk_2"
    t.integer "budget", default: 600
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
