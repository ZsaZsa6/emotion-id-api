

ActiveRecord::Schema.define(version: 2021_05_12_190615) do

  create_table "challenge_answers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "challenge_id"
    t.integer "face_id"
    t.integer "game_id"
    t.boolean "correct"
    t.index ["challenge_id"], name: "index_challenge_answers_on_challenge_id"
    t.index ["face_id"], name: "index_challenge_answers_on_face_id"
    t.index ["game_id"], name: "index_challenge_answers_on_game_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.integer "correct_answer_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "emotion_name"
    t.integer "challenge_number"
    t.integer "level_number"
  end

  create_table "faces", force: :cascade do |t|
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "challenge_id"
    t.index ["challenge_id"], name: "index_faces_on_challenge_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "current_challenge_id"
  end

  add_foreign_key "challenge_answers", "challenges"
  add_foreign_key "challenge_answers", "faces"
  add_foreign_key "challenge_answers", "games"
  add_foreign_key "faces", "challenges"
end
