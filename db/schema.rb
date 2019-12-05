# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 4) do

  create_table "park_amenities", force: :cascade do |t|
    t.boolean "jungle_gym"
    t.boolean "merry_go_round"
    t.boolean "baseball_field"
    t.boolean "soccer_field"
    t.boolean "basketball_court"
    t.boolean "football_field"
    t.boolean "arts_and_crafts"
    t.integer "park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.string "opens"
    t.string "closes"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "user"
    t.string "review"
    t.integer "user_id"
    t.integer "park_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "state"
    t.string "street_address"
  end

end
