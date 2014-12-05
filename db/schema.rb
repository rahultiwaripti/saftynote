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

ActiveRecord::Schema.define(version: 20141203083217) do

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.string   "business_name"
    t.string   "provider_type"
    t.string   "telephone"
    t.string   "mobile_phone_number"
    t.boolean  "get_notification"
    t.integer  "user_id"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zip"
    t.string   "contact_last_name"
    t.string   "contact_first_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",               default: "pending"
    t.string   "email"
    t.string   "county"
    t.string   "contact_method"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "featured",             default: false
  end

  create_table "employees", force: true do |t|
    t.float    "latitude",       limit: 24
    t.float    "longitude",      limit: 24
    t.integer  "company_id"
    t.integer  "lovedone_id"
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "service_status"
  end

  add_index "employees", ["company_id"], name: "index_employees_on_company_id", using: :btree
  add_index "employees", ["lovedone_id"], name: "index_employees_on_lovedone_id", using: :btree

  create_table "employees_providers", force: true do |t|
    t.integer  "employee_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_members", force: true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "email"
    t.string   "mobilephone"
    t.string   "contact"
    t.integer  "city"
    t.integer  "county"
    t.integer  "state"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "followers", force: true do |t|
    t.integer  "user_id"
    t.integer  "lovedone_id"
    t.string   "request_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "followers", ["lovedone_id"], name: "index_followers_on_lovedone_id", using: :btree
  add_index "followers", ["user_id"], name: "index_followers_on_user_id", using: :btree

  create_table "invitations", force: true do |t|
    t.integer  "lovedone_id"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "title"
    t.decimal  "amount",        precision: 10, scale: 0
    t.text     "ids"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "message_count"
    t.integer  "sponsor_id"
  end

  create_table "leads", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone_number"
  end

  add_index "leads", ["profile_id"], name: "index_leads_on_profile_id", using: :btree

  create_table "lovedones", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "nick_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "primary_contact_id"
    t.string   "zip_code"
    t.string   "county"
    t.integer  "employee_id"
  end

  create_table "notifications", force: true do |t|
    t.integer  "employee_id"
    t.integer  "lovedone_id"
    t.string   "status"
    t.string   "notification_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "follower_id"
    t.integer  "primary_contact_id"
    t.integer  "sponsor_id"
    t.boolean  "invoiced",           default: false
  end

  add_index "notifications", ["employee_id"], name: "index_notifications_on_employee_id", using: :btree
  add_index "notifications", ["follower_id"], name: "index_notifications_on_follower_id", using: :btree
  add_index "notifications", ["lovedone_id"], name: "index_notifications_on_lovedone_id", using: :btree
  add_index "notifications", ["primary_contact_id"], name: "index_notifications_on_primary_contact_id", using: :btree

  create_table "primary_contacts", force: true do |t|
    t.integer  "lovedone_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "nick_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.string   "zip"
    t.text     "contact_method"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "phone_number"
    t.string   "county"
    t.integer  "user_type",      default: 0
  end

  create_table "providers", force: true do |t|
    t.integer  "company_id"
    t.integer  "lovedone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["company_id"], name: "index_providers_on_company_id", using: :btree
  add_index "providers", ["lovedone_id"], name: "index_providers_on_lovedone_id", using: :btree

  create_table "settings", force: true do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_name"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.string   "mobile_phone_number"
    t.string   "contact_last_name"
    t.string   "contact_first_name"
    t.string   "sponsor_ship_type"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "advertise",            default: false
    t.string   "sponsortype"
    t.string   "county"
  end

  create_table "trips", force: true do |t|
    t.integer  "employee_id"
    t.integer  "lovedone_id"
    t.string   "status"
    t.string   "state"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["employee_id"], name: "index_trips_on_employee_id", using: :btree
  add_index "trips", ["lovedone_id"], name: "index_trips_on_lovedone_id", using: :btree

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
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.integer  "selected_page"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
