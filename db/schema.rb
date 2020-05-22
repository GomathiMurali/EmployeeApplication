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

ActiveRecord::Schema.define(version: 20200521120939) do

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_name"
    t.integer "age"
    t.string "gender"
    t.string "desgination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_id"
    t.string "project_name"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_name"
    t.string "client"
    t.string "location"
    t.integer "team_size"
    t.string "start_date"
    t.string "end_date"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "project_name"
    t.string "task_name"
    t.string "description"
    t.string "estimate_hours"
    t.string "employee_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
