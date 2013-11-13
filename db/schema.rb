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

ActiveRecord::Schema.define(version: 20131113201031) do

  create_table "artists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mixtape_songs", force: true do |t|
    t.integer  "song_id"
    t.integer  "mixtape_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mixtape_songs", ["mixtape_id"], name: "index_mixtape_songs_on_mixtape_id"
  add_index "mixtape_songs", ["song_id"], name: "index_mixtape_songs_on_song_id"

  create_table "mixtapes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  create_table "song_genres", force: true do |t|
    t.integer  "song_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "song_genres", ["genre_id"], name: "index_song_genres_on_genre_id"
  add_index "song_genres", ["song_id"], name: "index_song_genres_on_song_id"

  create_table "songs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"

  create_table "user_mixtapes", force: true do |t|
    t.integer  "user_id"
    t.integer  "mixtape_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "owner"
  end

  add_index "user_mixtapes", ["mixtape_id"], name: "index_user_mixtapes_on_mixtape_id"
  add_index "user_mixtapes", ["user_id"], name: "index_user_mixtapes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
