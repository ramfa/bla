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

ActiveRecord::Schema.define(version: 20150302184920) do

  create_table "Animals", force: :cascade do |t|
    t.string   "name"
    t.decimal  "weight"
    t.integer  "numbertag"
    t.integer  "microchip"
    t.date     "capturedate"
    t.integer  "age"
    t.integer  "commonname_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "Animals", ["commonname_id"], name: "index_animals_on_commonname_id"

  create_table "commonnames", force: :cascade do |t|
    t.string   "name"
    t.integer  "kind_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "commonnames", ["kind_id"], name: "index_commonnames_on_kind_id"

  create_table "egresses", force: :cascade do |t|
    t.date     "date"
    t.text     "cause"
    t.text     "reproduction"
    t.integer  "age"
    t.text     "causedeath"
    t.text     "observations"
    t.integer  "animal_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "egresses", ["animal_id"], name: "index_egresses_on_animal_id"

  create_table "entries", force: :cascade do |t|
    t.date     "dateof"
    t.integer  "origin_id"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "entries", ["animal_id"], name: "index_entries_on_animal_id"
  add_index "entries", ["origin_id"], name: "index_entries_on_origin_id"

  create_table "histories", force: :cascade do |t|
    t.date     "date"
    t.text     "signs"
    t.text     "treatment"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "histories", ["animal_id"], name: "index_histories_on_animal_id"

  create_table "kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "localities", ["province_id"], name: "index_localities_on_province_id"

  create_table "origins", force: :cascade do |t|
    t.string   "colector"
    t.string   "address"
    t.text     "feeding"
    t.text     "capmethod"
    t.text     "features"
    t.integer  "province_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "origins", ["province_id"], name: "index_origins_on_province_id"

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
