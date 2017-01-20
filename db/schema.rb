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

ActiveRecord::Schema.define(version: 20170120131926) do

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

  create_table "admin_admission_fees_statuses_admin_tuition_fees", id: false, force: :cascade do |t|
    t.integer "admission_fees_status_id", null: false
    t.integer "tuition_fee_id",           null: false
    t.index ["admission_fees_status_id", "tuition_fee_id"], name: "index_admin_admission_fees_statuses_tuition_fees"
  end

  create_table "admin_admission_process_image_details", force: :cascade do |t|
    t.text     "details"
    t.integer  "admission_process_image_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["admission_process_image_id"], name: "admission_process_image_details"
  end

  create_table "admin_admission_process_images", force: :cascade do |t|
    t.integer  "admission_process_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["admission_process_id"], name: "admission_process_image"
  end

  create_table "admin_admission_processes", force: :cascade do |t|
    t.integer  "step"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone"
    t.text     "message"
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
    t.text     "details"
    t.index ["icon_id"], name: "index_admin_events_on_icon_id"
  end

  create_table "admin_google_maps", force: :cascade do |t|
    t.string   "name"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "google_api_key"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "admin_icons", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_mini_sliders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
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

  create_table "admin_postal_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["icon_id"], name: "index_admin_postal_types_on_icon_id"
  end

  create_table "admin_postals", force: :cascade do |t|
    t.string   "name"
    t.string   "details"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_admin_postals_on_type_id"
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

  create_table "admin_sliders", force: :cascade do |t|
    t.string   "name"
    t.string   "caption_1"
    t.string   "caption_2"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "admin_social_media", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["icon_id"], name: "index_admin_social_media_on_icon_id"
  end

  create_table "admin_subject_forms", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_admin_subject_forms_on_subject_id"
  end

  create_table "admin_subjects", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "semester_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_admin_subjects_on_course_id"
    t.index ["semester_id"], name: "index_admin_subjects_on_semester_id"
  end

  create_table "admin_testimonials", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "department_id"
    t.integer  "semester_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["department_id"], name: "index_admin_testimonials_on_department_id"
    t.index ["semester_id"], name: "index_admin_testimonials_on_semester_id"
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

  create_table "admin_videos", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "details"
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
    t.text     "details"
  end

  create_table "signup_users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
