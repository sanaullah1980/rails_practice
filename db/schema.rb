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

ActiveRecord::Schema.define(version: 20161114154411) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "firstname",  limit: 50
    t.string   "lastname",   limit: 50
    t.string   "email",      limit: 250
    t.string   "password",   limit: 15
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "chora_items", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.string   "title",         limit: 300, null: false
    t.string   "city",                      null: false
    t.string   "price"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "chora_items", ["admin_user_id", "id"], name: "index_chora_items_on_admin_user_id_and_id"

  create_table "posts", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.string   "title",         limit: 300
    t.text     "description"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
