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

ActiveRecord::Schema.define(version: 20160407152553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "burned_calories", force: :cascade do |t|
    t.string   "uid"
    t.string   "day"
    t.integer  "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calories_burned", force: :cascade do |t|
    t.string   "uid"
    t.string   "day"
    t.integer  "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consumed_calories", force: :cascade do |t|
    t.string   "uid"
    t.string   "day"
    t.integer  "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "followable_id",                   null: false
    t.string   "followable_type",                 null: false
    t.integer  "follower_id",                     null: false
    t.string   "follower_type",                   null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "follows", ["followable_id", "followable_type"], name: "fk_followables", using: :btree
  add_index "follows", ["follower_id", "follower_type"], name: "fk_follows", using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "with_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "activity"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "about"
    t.string   "avatar"
    t.string   "cover"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "auth0_id"
    t.integer  "age"
    t.string   "date_of_birth"
    t.string   "gender"
    t.string   "height"
    t.string   "weight"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
