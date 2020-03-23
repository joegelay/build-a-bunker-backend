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

ActiveRecord::Schema.define(version: 2020_03_23_191519) do

  create_table "bunker_supplies", force: :cascade do |t|
    t.integer "bunker_id", null: false
    t.integer "supply_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bunker_id"], name: "index_bunker_supplies_on_bunker_id"
    t.index ["supply_id"], name: "index_bunker_supplies_on_supply_id"
  end

  create_table "bunkers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_bunkers_on_user_id"
  end

  create_table "disasters", force: :cascade do |t|
    t.string "name"
    t.integer "food"
    t.integer "shelter"
    t.integer "weapon"
    t.integer "health"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cost"
    t.string "category"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "email"
  end

  add_foreign_key "bunker_supplies", "bunkers"
  add_foreign_key "bunker_supplies", "supplies"
  add_foreign_key "bunkers", "users"
end
