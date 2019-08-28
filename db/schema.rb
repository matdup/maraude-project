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

ActiveRecord::Schema.define(version: 2019_08_28_125410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assos", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "photo"
    t.string "phone_number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_assos_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "maraude_id"
    t.bigint "user_id"
    t.index ["maraude_id"], name: "index_bookings_on_maraude_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "maraudes", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "ltd_starts"
    t.float "lng_starts"
    t.float "ltd_ends"
    t.float "lng_ends"
    t.string "address_start"
    t.string "address_end"
    t.string "capacity"
    t.string "photo"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string "status"
    t.json "direction"
    t.bigint "asso_id"
    t.index ["asso_id"], name: "index_maraudes_on_asso_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assos", "users"
  add_foreign_key "bookings", "maraudes"
  add_foreign_key "bookings", "users"
  add_foreign_key "maraudes", "assos"
end
