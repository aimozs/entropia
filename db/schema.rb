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

ActiveRecord::Schema.define(version: 20150906043624) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "itemType"
    t.string   "level"
    t.float    "ttValue"
    t.float    "marketValue"
    t.integer  "volume"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items_resources", id: false, force: :cascade do |t|
    t.integer "resource_id"
    t.integer "item_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "firstName",  limit: 255
    t.string   "lastName",   limit: 255
    t.string   "linkPhoto",  limit: 255
    t.string   "linkGoogle", limit: 255
    t.date     "dob"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "recipes", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "recipes", ["item_id"], name: "index_recipes_on_item_id"
  add_index "recipes", ["resource_id"], name: "index_recipes_on_resource_id"

  create_table "resources", force: :cascade do |t|
    t.string   "name"
    t.string   "resourceType"
    t.string   "image"
    t.float    "ttValue"
    t.float    "marketValue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
