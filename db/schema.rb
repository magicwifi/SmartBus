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

ActiveRecord::Schema.define(version: 20160412094113) do

  create_table "metatrashes", force: :cascade do |t|
    t.integer  "main_battery",           limit: 4,   default: 50
    t.integer  "back_battery",           limit: 4,   default: 90
    t.integer  "forword_current",        limit: 4,   default: 2
    t.integer  "back_current",           limit: 4,   default: 2
    t.integer  "temperature",            limit: 4,   default: 35
    t.boolean  "sensor70_status",        limit: 1,   default: true
    t.boolean  "sensor90_status",        limit: 1,   default: false
    t.boolean  "up_motor_status",        limit: 1,   default: true
    t.boolean  "down_motor_status",      limit: 1,   default: true
    t.boolean  "door_sensor_status",     limit: 1,   default: true
    t.boolean  "voice1_sensor_status",   limit: 1,   default: true
    t.boolean  "voice2_sensor_status",   limit: 1,   default: true
    t.boolean  "back_box_stauts",        limit: 1,   default: true
    t.boolean  "main_back_switch",       limit: 1,   default: true
    t.boolean  "main_motor_stauts",      limit: 1,   default: true
    t.boolean  "electromagnet_stauts",   limit: 1,   default: true
    t.boolean  "voice_module_status",    limit: 1,   default: true
    t.boolean  "lightbox_module_status", limit: 1,   default: true
    t.boolean  "led_module_status",      limit: 1,   default: true
    t.integer  "error_name",             limit: 4,   default: 0
    t.float    "latitude",               limit: 24,  default: 29.391
    t.float    "longitude",              limit: 24,  default: 120.825
    t.integer  "cdma_rssi",              limit: 4,   default: 20
    t.integer  "lightbox_start1_at",     limit: 4,   default: 900
    t.integer  "lightbox_stop1_at",      limit: 4,   default: 1000
    t.integer  "lightbox_start2_at",     limit: 4,   default: 1100
    t.integer  "lightbox_stop2_at",      limit: 4,   default: 1200
    t.integer  "led_start1_at",          limit: 4,   default: 1300
    t.integer  "led_stop1_at",           limit: 4,   default: 1400
    t.integer  "led_start2_at",          limit: 4,   default: 1500
    t.integer  "led_stop2_at",           limit: 4,   default: 1600
    t.string   "control_start1_at",      limit: 255, default: "1100"
    t.string   "control_stop1_at",       limit: 255, default: "1200"
    t.string   "control_start2_at",      limit: 255, default: "1600"
    t.string   "control_stop2_at",       limit: 255, default: "1700"
    t.integer  "main_lowest_vol",        limit: 4,   default: 2
    t.integer  "back_lowest_vol",        limit: 4,   default: 2
    t.string   "apnnum",                 limit: 255
    t.string   "phonenum",               limit: 255
    t.string   "led_display_string",     limit: 255, default: "欢迎使用智能垃圾桶"
    t.string   "name",                   limit: 255
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "trashes", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "phonenum",         limit: 255
    t.integer  "charge_time",      limit: 4
    t.float    "battery_remain",   limit: 24
    t.boolean  "mechanics_status", limit: 1
    t.boolean  "equipment_status", limit: 1
    t.integer  "compress_time",    limit: 4
    t.float    "overflow_remain",  limit: 24
    t.integer  "switch_time",      limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

end
