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

ActiveRecord::Schema.define(version: 20170607195730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cameras", force: :cascade do |t|
    t.string   "Make"
    t.string   "Model"
    t.string   "DisplayName"
    t.string   "Description"
    t.string   "NetworkAddress"
    t.string   "Port"
    t.string   "Username"
    t.string   "Password"
    t.string   "SkypeUsername"
    t.string   "CustomerId"
    t.string   "FlipX"
    t.string   "FlipY"
    t.string   "Rotate90"
    t.string   "Sensitivity"
    t.string   "MaxFrameRate"
    t.string   "Door1_Id"
    t.string   "Door1_Name"
    t.string   "Door1_Device"
    t.string   "Door2_Id"
    t.string   "Door2_Name"
    t.string   "Door2_Device"
    t.string   "LocationName"
    t.string   "LocationAddress"
    t.string   "LocationCity"
    t.string   "LocationState"
    t.string   "LocationZip"
    t.string   "EmergencyContact1Name"
    t.string   "EmergencyContact1Phone"
    t.string   "EmergencyContact2Name"
    t.string   "EmergencyContact2Phone"
    t.string   "TimeZone"
    t.string   "CreatedBy"
    t.string   "DateCreated"
    t.string   "ModifiedBy"
    t.string   "DateModified"
    t.string   "DeletedBy"
    t.string   "DateDeleted"
    t.string   "AlarmFilePath"
    t.string   "RSBInstanceId"
    t.string   "Door1_Status"
    t.string   "Door2_Status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
