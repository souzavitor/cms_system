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

ActiveRecord::Schema.define(version: 20150604172422) do

  create_table "profiles", force: :cascade do |t|
    t.integer  "system_user_id", limit: 4
    t.text     "about",          limit: 65535, null: false
    t.string   "gender",         limit: 1,     null: false
    t.date     "birthdate",                    null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "profiles", ["system_user_id"], name: "fk_rails_c643f85ff9", using: :btree

  create_table "system_users", force: :cascade do |t|
    t.string   "name",       limit: 70,                 null: false
    t.string   "email",      limit: 100
    t.string   "username",   limit: 30,                 null: false
    t.string   "password",   limit: 40,                 null: false
    t.boolean  "st",         limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "system_users", ["name"], name: "index_system_users_on_name", using: :btree
  add_index "system_users", ["username"], name: "index_system_users_on_username", using: :btree

  create_table "system_users_groups", force: :cascade do |t|
    t.integer "system_user_id", limit: 4
    t.integer "user_group_id",  limit: 4
  end

  add_index "system_users_groups", ["system_user_id"], name: "fk_rails_55afa5c36f", using: :btree
  add_index "system_users_groups", ["user_group_id"], name: "fk_rails_4e20f781c6", using: :btree

  create_table "user_groups", force: :cascade do |t|
    t.string   "slug",        limit: 40
    t.string   "name",        limit: 50
    t.text     "description", limit: 65535
    t.boolean  "st",          limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "profiles", "system_users"
  add_foreign_key "system_users_groups", "system_users"
  add_foreign_key "system_users_groups", "user_groups"
end
