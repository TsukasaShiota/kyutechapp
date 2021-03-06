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

ActiveRecord::Schema.define(version: 20160323105228) do

  create_table "accesses", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "genre_id",     limit: 4
    t.integer  "station_id",   limit: 4
    t.integer  "line_id",      limit: 4
    t.integer  "direction_id", limit: 4
    t.integer  "campus_id",    limit: 4
  end

  create_table "directions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lectures", id: false, force: :cascade do |t|
    t.integer "id",          limit: 8,     null: false
    t.integer "campus_id",   limit: 4
    t.integer "sub_id",      limit: 8,     null: false
    t.string  "title",       limit: 255,   null: false
    t.string  "teacher",     limit: 255,   null: false
    t.string  "year",        limit: 255
    t.string  "term",        limit: 255
    t.string  "week_time",   limit: 255
    t.integer "created_at",  limit: 8,     null: false
    t.integer "updated_at",  limit: 8,     null: false
    t.string  "room",        limit: 255
    t.string  "title_en",    limit: 255,   null: false
    t.string  "class_num",   limit: 255,   null: false
    t.integer "required",    limit: 4
    t.integer "credit",      limit: 4
    t.text    "purpose",     limit: 65535
    t.text    "overview",    limit: 65535
    t.text    "keyword",     limit: 65535
    t.text    "plan",        limit: 65535
    t.text    "evaluation",  limit: 65535
    t.text    "book",        limit: 65535
    t.text    "preparation", limit: 65535
  end

  add_index "lectures", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "notices", id: false, force: :cascade do |t|
    t.integer  "id",             limit: 4,     null: false
    t.string   "title",          limit: 255,   null: false
    t.text     "details",        limit: 65535
    t.integer  "category_id",    limit: 4,     null: false
    t.integer  "department_id",  limit: 4,     null: false
    t.integer  "campus_id",      limit: 4,     null: false
    t.integer  "date",           limit: 4
    t.string   "period_time",    limit: 255
    t.string   "grade",          limit: 255
    t.string   "place",          limit: 255
    t.string   "subject",        limit: 255
    t.string   "teacher",        limit: 255
    t.string   "before_data",    limit: 255
    t.string   "after_data",     limit: 255
    t.string   "web_url",        limit: 255,   null: false
    t.string   "note",           limit: 255
    t.string   "document1_name", limit: 255
    t.string   "document2_name", limit: 255
    t.string   "document3_name", limit: 255
    t.string   "document4_name", limit: 255
    t.string   "document5_name", limit: 255
    t.string   "document1_url",  limit: 255
    t.string   "document2_url",  limit: 255
    t.string   "document3_url",  limit: 255
    t.string   "document4_url",  limit: 255
    t.string   "document5_url",  limit: 255
    t.integer  "regist_time",    limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "notices", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "patterns", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "access_id",  limit: 4
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.time     "time"
    t.integer  "pattern_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
