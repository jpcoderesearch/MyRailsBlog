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

ActiveRecord::Schema.define(version: 20200409144315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "user_id"
    t.integer  "resume_id"
    t.text     "office_address"
    t.string   "stay"
    t.string   "current_address"
    t.text     "permenent_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "user_id"
    t.integer  "members"
    t.string   "hr_phone"
    t.string   "state"
    t.text     "address"
    t.string   "bank"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experience_id"
  end

  create_table "educational_qualifications", force: true do |t|
    t.string   "college"
    t.string   "course"
    t.string   "subject"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "percentage"
    t.integer  "user_id"
    t.integer  "resume_id"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "rollnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", force: true do |t|
    t.string   "role"
    t.string   "company"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "description"
    t.text     "projects"
    t.integer  "user_id"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "present"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.string   "percentage"
    t.string   "expert_level"
    t.integer  "user_id"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_value"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "company_id"
    t.integer  "user_id"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "achievements"
  end

  create_table "resumes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "form_type"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.date     "last_used"
    t.string   "project"
    t.integer  "percentage"
    t.string   "expert_level"
    t.integer  "user_id"
    t.integer  "resume_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "user_name"
    t.boolean  "admin"
    t.string   "role"
    t.string   "email1"
    t.string   "email2"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "present_job"
    t.string   "present_city"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
