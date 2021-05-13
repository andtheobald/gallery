# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_13_152826) do

  create_table "exhibits", force: :cascade do |t|
    t.string "img_url"
    t.string "artwork_name"
    t.string "artist_name"
    t.text "information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pgallerys", force: :cascade do |t|
    t.string "img_url"
    t.string "artwork_name"
    t.string "artist_name"
    t.text "information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "selections", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "exhibit_id", null: false
    t.index ["exhibit_id"], name: "index_selections_on_exhibit_id"
  end

  add_foreign_key "selections", "exhibits"
end
