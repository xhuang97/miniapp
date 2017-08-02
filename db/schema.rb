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

ActiveRecord::Schema.define(version: 20170731170456) do

  create_table "courses", force: true do |t|
    t.string   "ta_name"
    t.integer  "course_num"
    t.string   "days_of_week"
    t.string   "time_of_day"
    t.string   "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inputs", id: false, force: true do |t|
    t.string   "_id"
    t.string   "dateTime"
    t.string   "type"
    t.string   "sessionId"
    t.string   "sessionDesc"
    t.integer  "sessionCond"
    t.boolean  "isUndo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inputs", ["_id"], name: "index_inputs_on__id", unique: true

end
