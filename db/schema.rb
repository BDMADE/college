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

ActiveRecord::Schema.define(version: 20161112004853) do

  create_table "admin_abouts", force: :cascade do |t|
    t.string   "slug"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "admin_admission_eligibilities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "admin_admission_fees_statuses", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_courses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "admin_departments", force: :cascade do |t|
    t.string   "name"
    t.string   "short_form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_events", force: :cascade do |t|
    t.string   "name"
    t.string   "place"
    t.date     "event_date"
    t.string   "starting_time"
    t.string   "ending_time"
    t.integer  "icon_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["icon_id"], name: "index_admin_events_on_icon_id"
  end

  create_table "admin_icons", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_news", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "admin_notice_boards", force: :cascade do |t|
    t.string   "name"
    t.string   "notice_type"
    t.integer  "semester_id"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_admin_notice_boards_on_department_id"
    t.index ["semester_id"], name: "index_admin_notice_boards_on_semester_id"
  end

  create_table "admin_notice_forms", force: :cascade do |t|
    t.string   "description"
    t.string   "background_color"
    t.integer  "notice_board_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["notice_board_id"], name: "index_admin_notice_forms_on_notice_board_id"
  end

  create_table "admin_quick_links", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_scholarship_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_scholarships", force: :cascade do |t|
    t.string   "name"
    t.integer  "discount"
    t.string   "condition"
    t.text     "details"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_admin_scholarships_on_group_id"
  end

  create_table "admin_semesters", force: :cascade do |t|
    t.string   "name"
    t.string   "short_form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_tuition_fees", force: :cascade do |t|
    t.string   "name"
    t.integer  "payable"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_admin_tuition_fees_on_group_id"
  end

  create_table "admin_tuition_fees_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_websites", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "favicon_file_name"
    t.string   "favicon_content_type"
    t.integer  "favicon_file_size"
    t.datetime "favicon_updated_at"
  end

end
