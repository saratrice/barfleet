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

ActiveRecord::Schema.define(version: 2019_11_04_035831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_migrations", primary_key: "version", id: :string, force: :cascade do |t|
  end

  create_table "divisions", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "location"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_divisions_on_ancestry"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "division_id", null: false
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["division_id"], name: "index_memberships_on_division_id"
    t.index ["profile_id"], name: "index_memberships_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "email"
    t.string "phone"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "oauth_uid"
    t.string "email"
    t.boolean "email_verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "memberships", "divisions"
  add_foreign_key "memberships", "profiles"
  add_foreign_key "profiles", "users"
end
