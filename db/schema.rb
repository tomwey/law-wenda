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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130523130619) do

  create_table "answers", :force => true do |t|
    t.text     "body",        :null => false
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"
  add_index "answers", ["user_id"], :name => "index_answers_on_user_id"

  create_table "nodes", :force => true do |t|
    t.string   "name",                           :null => false
    t.text     "summary"
    t.integer  "sort",            :default => 0, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "section_id",                     :null => false
    t.integer  "profile_id"
    t.integer  "questions_count", :default => 0
  end

  add_index "nodes", ["profile_id"], :name => "index_nodes_on_profile_id"
  add_index "nodes", ["section_id"], :name => "index_nodes_on_section_id"

  create_table "profiles", :force => true do |t|
    t.string   "location"
    t.string   "practiceno"
    t.string   "law_firm"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.string   "profession"
  end

  add_index "profiles", ["location"], :name => "index_profiles_on_location"
  add_index "profiles", ["practiceno"], :name => "index_profiles_on_practiceno", :unique => true

  create_table "questions", :force => true do |t|
    t.string   "title",                        :null => false
    t.text     "body"
    t.integer  "node_id"
    t.integer  "user_id"
    t.integer  "answers_count", :default => 0
    t.integer  "visit_count",   :default => 0
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.datetime "answered_at"
  end

  add_index "questions", ["answered_at"], :name => "index_questions_on_answered_at"
  add_index "questions", ["node_id"], :name => "index_questions_on_node_id"
  add_index "questions", ["user_id"], :name => "index_questions_on_user_id"

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.integer  "sort",       :default => 0
    t.text     "summary"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "site_configs", :force => true do |t|
    t.string   "key",        :null => false
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "site_configs", ["key"], :name => "index_site_configs_on_key"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "login"
    t.string   "private_token"
    t.string   "role",                   :default => "用户"
    t.string   "avatar"
    t.integer  "questions_count",        :default => 0
    t.boolean  "verified",               :default => true
    t.integer  "answers_count",          :default => 0
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["private_token"], :name => "index_users_on_private_token", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
