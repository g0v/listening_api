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

ActiveRecord::Schema.define(:version => 20130323080949) do

  create_table "categories", :force => true do |t|
    t.integer  "tag_id"
    t.string   "ancestry"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"
  add_index "categories", ["tag_id"], :name => "index_categories_on_tag_id"

  create_table "govs", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "govs", ["name"], :name => "index_govs_on_name"

  create_table "help_tags", :force => true do |t|
    t.integer  "help_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "help_tags", ["help_id"], :name => "index_help_tags_on_help_id"
  add_index "help_tags", ["tag_id"], :name => "index_help_tags_on_tag_id"

  create_table "helps", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "helps", ["email"], :name => "index_helps_on_email"
  add_index "helps", ["name"], :name => "index_helps_on_name"

  create_table "rule_tags", :force => true do |t|
    t.integer  "rule_id"
    t.integer  "tag_id"
    t.boolean  "is_published", :default => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "rule_tags", ["is_published"], :name => "index_rule_tags_on_is_published"
  add_index "rule_tags", ["rule_id"], :name => "index_rule_tags_on_rule_id"
  add_index "rule_tags", ["tag_id"], :name => "index_rule_tags_on_tag_id"

  create_table "rules", :force => true do |t|
    t.string   "title"
    t.integer  "gov_id"
    t.text     "content"
    t.string   "url"
    t.boolean  "is_published", :default => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "rules", ["gov_id"], :name => "index_rules_on_gov_id"
  add_index "rules", ["is_published"], :name => "index_rules_on_is_published"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.string   "eng_name"
    t.string   "value"
    t.boolean  "is_published"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "tags", ["is_published"], :name => "index_tags_on_is_published"
  add_index "tags", ["name"], :name => "index_tags_on_name"

  create_table "user_rules", :force => true do |t|
    t.integer  "rule_id"
    t.integer  "user_id"
    t.boolean  "has_applied", :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "user_rules", ["rule_id"], :name => "index_user_rules_on_rule_id"
  add_index "user_rules", ["user_id"], :name => "index_user_rules_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.string   "provider"
    t.string   "uid"
    t.date     "birthday"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["provider", "uid"], :name => "index_users_on_provider_and_uid"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

end
