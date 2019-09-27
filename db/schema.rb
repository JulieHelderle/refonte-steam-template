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

ActiveRecord::Schema.define(version: 2019_09_27_004052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devs", force: :cascade do |t|
    t.string "name"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_devs_on_game_id"
  end

  create_table "dlcs", force: :cascade do |t|
    t.string "name"
    t.string "license"
    t.date "date_release"
    t.float "price"
    t.text "description"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_dlcs_on_game_id"
  end

  create_table "evals", force: :cascade do |t|
    t.string "pseudo"
    t.integer "rating"
    t.text "comment"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_evals_on_game_id"
  end

  create_table "game_languages", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "language_id"
    t.boolean "interface"
    t.boolean "audio"
    t.boolean "subtitle"
    t.index ["game_id"], name: "index_game_languages_on_game_id"
    t.index ["language_id"], name: "index_game_languages_on_language_id"
  end

  create_table "game_pegis", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "pegi_id"
    t.index ["game_id"], name: "index_game_pegis_on_game_id"
    t.index ["pegi_id"], name: "index_game_pegis_on_pegi_id"
  end

  create_table "game_tags", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "tag_id"
    t.index ["game_id"], name: "index_game_tags_on_game_id"
    t.index ["tag_id"], name: "index_game_tags_on_tag_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.date "date_release"
    t.float "price"
    t.text "description"
    t.string "license"
    t.date "last_update"
    t.string "players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mods", force: :cascade do |t|
    t.string "name"
    t.string "license"
    t.date "date_release"
    t.text "description"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_mods_on_game_id"
  end

  create_table "pegis", force: :cascade do |t|
    t.string "name"
    t.text "imgurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_publishers_on_game_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trailers", force: :cascade do |t|
    t.text "video"
    t.text "img1"
    t.text "img2"
    t.text "img3"
    t.text "img4"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_trailers_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.text "url"
    t.text "preview"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_videos_on_game_id"
  end

  add_foreign_key "devs", "games"
  add_foreign_key "dlcs", "games"
  add_foreign_key "evals", "games"
  add_foreign_key "game_languages", "games"
  add_foreign_key "game_languages", "languages"
  add_foreign_key "game_pegis", "games"
  add_foreign_key "game_pegis", "pegis"
  add_foreign_key "game_tags", "games"
  add_foreign_key "game_tags", "tags"
  add_foreign_key "mods", "games"
  add_foreign_key "publishers", "games"
  add_foreign_key "trailers", "games"
  add_foreign_key "videos", "games"
end
