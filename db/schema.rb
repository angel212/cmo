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

ActiveRecord::Schema.define(:version => 20140901030244) do

  create_table "education_details", :force => true do |t|
    t.string   "last_school_name"
    t.string   "last_school_course_title"
    t.string   "last_school_degree"
    t.text     "last_school_address",              :limit => 255
    t.date     "last_school_commencement_date"
    t.date     "last_school_end_date"
    t.string   "highest_school_name"
    t.string   "highest_school_course_title"
    t.string   "highest_school_degree"
    t.text     "highest_school_address",           :limit => 255
    t.date     "highest_school_commencement_date"
    t.date     "highest_school_end_date"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "highest_school_country"
    t.string   "last_school_country"
    t.string   "scholarship"
    t.string   "class_year"
    t.string   "affiliation"
    t.string   "other_degree"
    t.string   "mba_school"
    t.string   "certification"
    t.string   "undergrad_major"
    t.string   "language"
  end

  create_table "employment_details", :force => true do |t|
    t.string   "company_name"
    t.text     "work_address",              :limit => 255
    t.string   "work_phone"
    t.string   "work_industry"
    t.string   "company_type"
    t.string   "company_position"
    t.string   "position_level"
    t.text     "work_job_responsibilities", :limit => 255
    t.date     "date_hired"
    t.date     "date_fired"
    t.string   "manager_exp_years"
    t.string   "years_work_experience"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "work_fax_number"
    t.string   "course"
    t.string   "years_ofexp"
    t.string   "function_exp"
    t.string   "industry_exp"
    t.string   "work_authorization"
    t.string   "geographic_authorization"
    t.string   "years_supervisor_exp"
    t.string   "salary_mba"
    t.string   "sabbatical"
    t.string   "company_before_mba"
    t.string   "company_location"
    t.string   "job_title"
    t.string   "degree"
    t.string   "school"
  end

  create_table "online_application_forms", :force => true do |t|
    t.integer  "user_id"
    t.integer  "personal_detail_id"
    t.integer  "employment_detail_id"
    t.integer  "education_detail_id"
    t.integer  "supporting_document_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "status"
    t.integer  "substatus"
    t.boolean  "read_status"
    t.datetime "composite_updated_at"
    t.integer  "supplemental_detail_id"
    t.string   "browser"
    t.string   "preference_id"
    t.string   "pass"
  end

  create_table "personal_details", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "dob"
    t.string   "citizenship"
    t.string   "civil_status"
    t.string   "medications"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "address_state"
    t.string   "address_country"
    t.string   "address_post_code"
    t.string   "email"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "funding_source"
    t.string   "title"
    t.string   "badge_name"
    t.string   "track0"
    t.string   "track1"
    t.string   "track2"
    t.string   "track3"
    t.string   "track4"
    t.string   "address_3"
    t.string   "current_telephone"
    t.string   "current_mobile"
    t.string   "home_address"
    t.string   "home_city"
    t.string   "home_country"
    t.string   "home_postal"
  end

  create_table "preferences", :force => true do |t|
    t.string   "industry"
    t.string   "criteria"
    t.string   "job_title"
    t.string   "salary_after_mba"
    t.string   "candidate_job_status"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "requirement_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requirements", :force => true do |t|
    t.integer  "online_application_form_id"
    t.integer  "requirement_type_id"
    t.string   "file_name"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "supplemental_details", :force => true do |t|
    t.string   "honors"
    t.string   "source_of_funding"
    t.string   "civil_status"
    t.string   "dual_citizenship"
    t.string   "notify_name"
    t.string   "notify_relationship"
    t.string   "notify_mobile"
    t.string   "notify_email"
    t.string   "housing"
    t.string   "source_of_information"
    t.string   "objective"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "group"
    t.string   "group_name"
    t.string   "organization_name"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
