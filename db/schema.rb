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

ActiveRecord::Schema.define(version: 20160607171304) do

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.string   "title"
    t.integer  "place_id"
    t.boolean  "finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events", ["place_id"], name: "index_events_on_place_id"

  create_table "events_members", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events_members", ["event_id"], name: "index_events_members_on_event_id"
  add_index "events_members", ["member_id"], name: "index_events_members_on_member_id"

  create_table "events_sponsors", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events_sponsors", ["event_id"], name: "index_events_sponsors_on_event_id"
  add_index "events_sponsors", ["sponsor_id"], name: "index_events_sponsors_on_sponsor_id"

  create_table "events_workers", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "events_workers", ["event_id"], name: "index_events_workers_on_event_id"
  add_index "events_workers", ["worker_id"], name: "index_events_workers_on_worker_id"

  create_table "incomings", force: :cascade do |t|
    t.integer  "sponsor_id"
    t.integer  "sum"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "incomings", ["sponsor_id"], name: "index_incomings_on_sponsor_id"

  create_table "members", force: :cascade do |t|
    t.string   "phone"
    t.string   "fio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outcomings", force: :cascade do |t|
    t.string   "object"
    t.integer  "sum"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "outcomings", ["event_id"], name: "index_outcomings_on_event_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "company_name"
    t.string   "phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "fio"
    t.string   "role"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
