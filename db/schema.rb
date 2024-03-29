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

ActiveRecord::Schema[7.0].define(version: 2022_12_05_203341) do
  create_table "articles", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "contact_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "surname"
    t.integer "phone"
    t.string "email"
    t.date "birth_date"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contact_infos_on_user_id"
  end

  create_table "duties", force: :cascade do |t|
    t.integer "experience_id"
    t.string "duty_text"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_duties_on_experience_id"
  end

  create_table "educations", force: :cascade do |t|
    t.integer "article_id"
    t.string "school"
    t.string "field_of_study"
    t.string "specialization"
    t.string "title"
    t.date "begin_date"
    t.date "finish_date"
    t.boolean "currently"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "if_university"
    t.index ["article_id"], name: "index_educations_on_article_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "article_id"
    t.string "worked_as"
    t.string "company"
    t.date "begin_date"
    t.date "finish_date"
    t.boolean "currently"
    t.text "job_duties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_experiences_on_article_id"
  end

  create_table "interests", force: :cascade do |t|
    t.integer "article_id"
    t.string "interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_interests_on_article_id"
  end

  create_table "languages", force: :cascade do |t|
    t.integer "article_id"
    t.string "language"
    t.string "speaking_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "writing_level"
    t.index ["article_id"], name: "index_languages_on_article_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "skills", force: :cascade do |t|
    t.integer "article_id"
    t.string "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_skills_on_article_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
