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

ActiveRecord::Schema.define(version: 20150328145656) do

  create_table "answers", force: :cascade do |t|
    t.integer  "poll_id",     limit: 4
    t.integer  "question_id", limit: 4
    t.integer  "member_id",   limit: 4
    t.string   "result",      limit: 255
    t.string   "score",       limit: 255, default: "0", null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "answers", ["member_id"], name: "index_answers_on_member_id", using: :btree
  add_index "answers", ["poll_id"], name: "index_answers_on_poll_id", using: :btree

  create_table "polls", force: :cascade do |t|
    t.string   "title",            limit: 255,   null: false
    t.text     "program_describe", limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",          limit: 4
  end

  create_table "question_options", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "explain_detail", limit: 255
    t.integer  "score",          limit: 4,   default: 0, null: false
    t.integer  "poll_id",        limit: 4
    t.integer  "question_id",    limit: 4
    t.integer  "member_id",      limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "question_options", ["member_id"], name: "index_question_options_on_member_id", using: :btree
  add_index "question_options", ["poll_id"], name: "index_question_options_on_poll_id", using: :btree
  add_index "question_options", ["question_id"], name: "index_question_options_on_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "title",       limit: 255,   null: false
    t.text     "description", limit: 65535
    t.text     "notes",       limit: 65535
    t.integer  "parent_id",   limit: 4
    t.integer  "ordering",    limit: 4
    t.integer  "poll_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "questions", ["poll_id"], name: "index_questions_on_poll_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           limit: 100,                 null: false
    t.string   "password_digest", limit: 255,                 null: false
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "remember_token",  limit: 255,                 null: false
    t.boolean  "is_active",       limit: 1,   default: true,  null: false
    t.boolean  "is_admin",        limit: 1,   default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "salt",            limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
