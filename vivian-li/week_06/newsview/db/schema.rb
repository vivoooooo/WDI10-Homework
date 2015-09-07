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

ActiveRecord::Schema.define(version: 20150907044155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text "headline_english"
    t.text "headline_other_language"
    t.text "author_english"
    t.text "author_other_language"
    t.text "source_english"
    t.text "source_other_language"
    t.date "date_published"
    t.date "date_accessed"
    t.text "link"
    t.text "article_text_english"
    t.text "article_other_language"
    t.text "screen_capture"
    t.text "keywords"
    t.text "issues"
    t.text "own_notes"
  end

  create_table "articles_organisations", id: false, force: :cascade do |t|
    t.integer "article_id"
    t.integer "organisation_id"
  end

  create_table "articles_people", id: false, force: :cascade do |t|
    t.integer "article_id"
    t.integer "person_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.text     "name"
    t.text     "year"
    t.text     "image"
    t.text     "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organisations_people", id: false, force: :cascade do |t|
    t.integer "organisation_id"
    t.integer "person_id"
  end

  create_table "people", force: :cascade do |t|
    t.text     "name"
    t.date     "birthday"
    t.text     "image"
    t.text     "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
