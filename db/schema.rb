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

ActiveRecord::Schema.define(:version => 20130801140024) do

  create_table "groupings", :force => true do |t|
    t.string   "code"
    t.string   "p_title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.text     "p_title"
    t.text     "p_type1"
    t.text     "p_type2"
    t.text     "tags"
    t.text     "description"
    t.text     "requirements"
    t.text     "status"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "messages"
    t.text     "outcome"
    t.text     "url_attatched"
    t.boolean  "if_award"
    t.text     "award_list"
    t.boolean  "if_patent"
    t.boolean  "if_product"
    t.boolean  "if_paper"
    t.text     "department"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "if_bt"
    t.boolean  "if_cs"
    t.boolean  "if_cv"
    t.boolean  "if_ee"
    t.boolean  "if_ec"
    t.boolean  "if_is"
    t.boolean  "if_me"
    t.boolean  "if_tc"
    t.boolean  "if_bca"
    t.boolean  "if_mca"
    t.boolean  "if_mcs"
    t.boolean  "if_mec"
    t.boolean  "if_mme"
    t.boolean  "if_mse"
    t.boolean  "if_mwt"
    t.boolean  "if_mba"
    t.text     "guides"
    t.text     "synopsis"
    t.text     "objective"
    t.text     "files"
    t.text     "patent_stuff"
    t.text     "product_stuff"
    t.text     "paper_stuff"
    t.text     "comments"
    t.text     "comment_tmp"
  end

  create_table "shadows", :force => true do |t|
    t.text     "code"
    t.text     "p_list"
    t.text     "g_list"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uploads", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.text     "project"
    t.text     "url"
    t.string   "perm"
    t.integer  "permission"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.string   "code"
    t.string   "contact"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "projects"
    t.string   "linkedin"
    t.integer  "access_level"
    t.string   "company"
    t.integer  "year"
    t.string   "department"
    t.text     "projects_g"
    t.integer  "istate",                 :default => 2,  :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
