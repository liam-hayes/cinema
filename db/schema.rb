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

ActiveRecord::Schema.define(version: 20161105194226) do

  create_table "admins", force: :cascade do |t|
    t.integer  "emp_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "screening_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "films", force: :cascade do |t|
    t.string   "title"
    t.integer  "run_time"
    t.string   "genre"
    t.string   "rating"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "screenings", force: :cascade do |t|
    t.integer  "film_id"
    t.integer  "screen_id"
    t.date     "date"
    t.string   "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screens", force: :cascade do |t|
    t.string   "screen_size"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "name"
  end

  create_table "seat_bookings", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "seat_id"
    t.string   "type"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "screen_id"
    t.integer  "seat_number"
    t.string   "row"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
