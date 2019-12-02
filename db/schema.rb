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

ActiveRecord::Schema.define(version: 2019_12_02_155723) do

  create_table "options", force: :cascade do |t|
    t.string "description"
    t.integer "subject_id", null: false
    t.index ["subject_id"], name: "index_options_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "category"
    t.string "winning"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
  end

  create_table "votes", force: :cascade do |t|
    t.string "option_choice"
    t.integer "user_id", null: false
    t.integer "subject_id", null: false
    t.index ["subject_id"], name: "index_votes_on_subject_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "options", "subjects"
  add_foreign_key "votes", "subjects"
  add_foreign_key "votes", "users"
end
