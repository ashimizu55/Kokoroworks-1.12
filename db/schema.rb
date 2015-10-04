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

ActiveRecord::Schema.define(version: 20151004073951) do

  create_table "therapists", force: :cascade do |t|
    t.text     "image_url",                     limit: 65535
    t.string   "first_name_kanji",              limit: 255
    t.string   "last_name_kanji",               limit: 255
    t.string   "first_name_hiragana",           limit: 255
    t.string   "last_name_hiragana",            limit: 255
    t.date     "birthday"
    t.string   "university_name",               limit: 255
    t.date     "university_graduated_year"
    t.string   "graduateschool_name",           limit: 255
    t.date     "graduateschool_graduated_year"
    t.text     "certification",                 limit: 65535
    t.text     "association",                   limit: 65535
    t.text     "achievements",                  limit: 65535
    t.text     "profession",                    limit: 65535
    t.text     "carrer_histroy",                limit: 65535
    t.text     "comments",                      limit: 65535
    t.string   "post_code",                     limit: 255
    t.text     "home_address",                  limit: 65535
    t.string   "email_address",                 limit: 255
    t.string   "phone_number1",                 limit: 255
    t.string   "phone_number2",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tops", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "first_name_kanji",       limit: 255
    t.string   "last_name_kanji",        limit: 255
    t.string   "first_name_hiragana",    limit: 255
    t.string   "last_name_hiragana",     limit: 255
    t.string   "sex",                    limit: 255
    t.date     "birthday"
    t.string   "nickname",               limit: 255
    t.string   "skype_name",             limit: 255
    t.string   "occupation",             limit: 255
    t.string   "phone_number",           limit: 255
    t.string   "post_cpde",              limit: 255
    t.text     "home_address",           limit: 65535
    t.text     "family_description",     limit: 65535
    t.text     "hospital",               limit: 65535
    t.text     "medicine",               limit: 65535
    t.text     "comments",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
