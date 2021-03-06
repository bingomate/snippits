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

ActiveRecord::Schema.define(version: 20170408201750) do

  create_table "reports", force: :cascade do |t|
    t.datetime "call_start"
    t.string   "call_duration"
    t.integer  "ring_duration"
    t.string   "caller"
    t.string   "call_direction"
    t.string   "called_number"
    t.string   "dialed_number"
    t.string   "account"
    t.string   "is_internal"
    t.string   "call_id"
    t.string   "continuation"
    t.string   "party_1_device"
    t.string   "party_1_name"
    t.string   "party_2_device"
    t.string   "party_2_name"
    t.integer  "hold_time"
    t.integer  "park_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
