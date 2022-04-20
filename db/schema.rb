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

ActiveRecord::Schema[7.0].define(version: 2022_04_20_012203) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "age"
    t.float "weight"
    t.string "history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "film_characters", force: :cascade do |t|
    t.bigint "film_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_film_characters_on_character_id"
    t.index ["film_id"], name: "index_film_characters_on_film_id"
  end

  create_table "film_genders", force: :cascade do |t|
    t.bigint "gender_id"
    t.bigint "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_film_genders_on_film_id"
    t.index ["gender_id"], name: "index_film_genders_on_gender_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.date "premiere"
    t.float "average"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "film_characters", "characters"
  add_foreign_key "film_characters", "films"
  add_foreign_key "film_genders", "films"
  add_foreign_key "film_genders", "genders"
end
