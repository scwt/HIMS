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

ActiveRecord::Schema.define(:version => 20130915103438) do

  create_table "certificates", :force => true do |t|
    t.string   "number"
    t.date     "award_date"
    t.string   "type"
    t.string   "leavel"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contracts", :force => true do |t|
    t.date     "signed_date"
    t.date     "deadline"
    t.string   "number"
    t.string   "type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "educations", :force => true do |t|
    t.string   "start_end_time"
    t.string   "school"
    t.string  "highest"
    t.string   "diploma"
    t.string   "major"
    t.string   "degree"
    t.integer  "employee_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "profile_number"
    t.string   "name"
    t.date     "birthday"
    t.string   "gender"
    t.string   "nation"
    t.string   "marriage_status"
    t.string   "political_status"
    t.date     "join_company_date"
    t.string   "bank_card_number"
    t.string   "status"
    t.string   "id_card_number"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "households", :force => true do |t|
    t.string   "type"
    t.string   "address"
    t.integer  "employee_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "scale"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "finished"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "train_records", :force => true do |t|
    t.date     "start_date"
    t.string   "end_date"
    t.string   "institution"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "work_records", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "project_name"
    t.string   "project_scale"
    t.string   "position"
    t.string   "profession"
    t.integer  "employee_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
