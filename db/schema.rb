# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_29_225446) do

  create_table "challenge_answers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "challenge_id"
    t.integer "face_id"
    t.index ["challenge_id"], name: "index_challenge_answers_on_challenge_id"
    t.index ["face_id"], name: "index_challenge_answers_on_face_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.integer "emotion_number"
    t.integer "face_answer_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level_id"
    t.index ["level_id"], name: "index_challenges_on_level_id"
  end

  create_table "faces", force: :cascade do |t|
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "answer_number"
    t.integer "challenge_id"
    t.index ["challenge_id"], name: "index_faces_on_challenge_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "levels", force: :cascade do |t|
    t.integer "level_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_levels_on_game_id"
  end

  add_foreign_key "challenge_answers", "challenges"
  add_foreign_key "challenge_answers", "faces"
  add_foreign_key "challenges", "levels"
  add_foreign_key "faces", "challenges"
  add_foreign_key "levels", "games"
end
