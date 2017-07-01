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

ActiveRecord::Schema.define(version: 20160302191725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approvals", force: true do |t|
    t.string   "week",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: true do |t|
    t.string   "name",       limit: nil
    t.integer  "user_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "approved",               default: false
    t.string   "name02",     limit: nil
    t.string   "name03",     limit: nil
    t.string   "name04",     limit: nil
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "recruitments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: true do |t|
    t.integer  "role_id"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "username",               limit: nil, default: "",    null: false
    t.string   "encrypted_password",     limit: nil, default: "",    null: false
    t.string   "reset_password_token",   limit: nil
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "monday",                 limit: nil
    t.string   "tuesday",                limit: nil
    t.string   "wednesday",              limit: nil
    t.string   "thursday",               limit: nil
    t.string   "friday",                 limit: nil
    t.string   "saturday",               limit: nil
    t.string   "sunday",                 limit: nil
    t.string   "mondayapp",              limit: nil
    t.string   "tuesdayapp",             limit: nil
    t.string   "wednesdayapp",           limit: nil
    t.string   "thursdayapp",            limit: nil
    t.string   "fridayapp",              limit: nil
    t.string   "saturdayapp",            limit: nil
    t.string   "sundayapp",              limit: nil
    t.boolean  "approved",                           default: false
    t.string   "sundayap",               limit: nil
    t.string   "mondayap",               limit: nil
    t.string   "tuesdayap",              limit: nil
    t.string   "wednesdayap",            limit: nil
    t.string   "thursdayap",             limit: nil
    t.string   "fridayap",               limit: nil
    t.string   "saturdayap",             limit: nil
    t.string   "monday02",               limit: nil
    t.string   "tuesday02",              limit: nil
    t.string   "wednesday02",            limit: nil
    t.string   "thursday02",             limit: nil
    t.string   "friday02",               limit: nil
    t.string   "saturday02",             limit: nil
    t.string   "sunday02",               limit: nil
    t.string   "monday03",               limit: nil
    t.string   "tuesday03",              limit: nil
    t.string   "wednesday03",            limit: nil
    t.string   "thursday03",             limit: nil
    t.string   "friday03",               limit: nil
    t.string   "saturday03",             limit: nil
    t.string   "sunday03",               limit: nil
    t.string   "monday04",               limit: nil
    t.string   "tuesday04",              limit: nil
    t.string   "wednesday04",            limit: nil
    t.string   "thursday04",             limit: nil
    t.string   "friday04",               limit: nil
    t.string   "saturday04",             limit: nil
    t.string   "sunday04",               limit: nil
    t.string   "mondayap02",             limit: nil
    t.string   "tuesdayap02",            limit: nil
    t.string   "wednesdayap02",          limit: nil
    t.string   "thursdayap02",           limit: nil
    t.string   "fridayap02",             limit: nil
    t.string   "saturdayap02",           limit: nil
    t.string   "sundayap02",             limit: nil
    t.string   "mondayap03",             limit: nil
    t.string   "tuesdayap03",            limit: nil
    t.string   "wednesdayap03",          limit: nil
    t.string   "thursdayap03",           limit: nil
    t.string   "fridayap03",             limit: nil
    t.string   "saturdayap03",           limit: nil
    t.string   "sundayap03",             limit: nil
    t.string   "mondayap04",             limit: nil
    t.string   "tuesdayap04",            limit: nil
    t.string   "wednesdayap04",          limit: nil
    t.string   "thursdayap04",           limit: nil
    t.string   "fridayap04",             limit: nil
    t.string   "saturdayap04",           limit: nil
    t.string   "sundayap04",             limit: nil
    t.integer  "order",                              default: 0
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
