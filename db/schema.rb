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

ActiveRecord::Schema.define(version: 20150220054956) do

  create_table "alternatives", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hrc_score"
  end

  add_index "alternatives", ["company_id"], name: "index_alternatives_on_company_id"

  create_table "comments", force: true do |t|
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["company_id"], name: "index_comments_on_company_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "hrc_score"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "value"
    t.integer  "user_id"
    t.integer  "alternative_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["alternative_id"], name: "index_ratings_on_alternative_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "tags", force: true do |t|
    t.string   "tag"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["company_id"], name: "index_tags_on_company_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
