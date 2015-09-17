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

ActiveRecord::Schema.define(version: 20150902070524) do

  create_table "anime_details", force: :cascade do |t|
    t.integer  "anime_title_id"
    t.text     "profile"
    t.string   "op_title"
    t.string   "op_artist"
    t.text     "op_movie"
    t.string   "ed_title"
    t.string   "ed_artist"
    t.text     "ed_movie"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "anime_titles", force: :cascade do |t|
    t.string   "title"
    t.string   "icon_url"
    t.binary   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.date     "birth"
    t.string   "homepage"
    t.string   "ctype"
    t.binary   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_musics", id: false, force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "music_id",  null: false
  end

  create_table "fan_comments", force: :cascade do |t|
    t.integer  "artist_no"
    t.string   "name"
    t.text     "body"
    t.boolean  "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memos", force: :cascade do |t|
    t.string   "memoable_type"
    t.integer  "memoable_id"
    t.string   "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string   "genre"
    t.string   "title"
    t.binary   "jacket"
    t.string   "album"
    t.string   "publish"
    t.date     "published"
    t.string   "youtube"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "music_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["music_id"], name: "index_reviews_on_music_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "salt"
    t.string   "email"
    t.boolean  "bm"
    t.string   "roles"
    t.integer  "reviews_count", default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
