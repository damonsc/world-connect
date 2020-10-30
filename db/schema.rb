# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_30_151537) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "first_name"
    t.text "last_name"
    t.text "phone_number"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "client_codes", force: :cascade do |t|
    t.string "client"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "title"
    t.text "name"
    t.text "email"
    t.text "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "password"
    t.text "uname"
  end

  create_table "connect_codes", force: :cascade do |t|
    t.integer "code"
    t.string "assigned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "assigned_username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "logs", force: :cascade do |t|
    t.date "date_of_session"
    t.time "time_of_sesion"
    t.string "details"
    t.integer "reference_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "client_code"
    t.string "iname"
  end

  create_table "payments", force: :cascade do |t|
    t.string "reason"
    t.text "amount"
    t.date "date"
    t.integer "reference_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "client_code"
    t.string "iname"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "description"
    t.string "status"
    t.boolean "complete"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "task_id"
    t.integer "user_id"
    t.string "note"
    t.integer "code"
    t.integer "client_code"
    t.boolean "client_submit", default: false
    t.index ["task_id"], name: "index_tasks_on_task_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "updates", force: :cascade do |t|
    t.string "title"
    t.text "status"
    t.text "creater"
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "admin_id"
    t.integer "reference_code"
    t.index ["admin_id"], name: "index_updates_on_admin_id"
    t.index ["user_id"], name: "index_updates_on_user_id"
  end

  create_table "uploads", force: :cascade do |t|
    t.string "name"
    t.string "attachment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "intended_user"
    t.integer "admin_id"
    t.integer "reference_code"
    t.string "user_submit"
    t.index ["admin_id"], name: "index_uploads_on_admin_id"
    t.index ["user_id"], name: "index_uploads_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.text "roles"
    t.boolean "ssla_client", default: false
    t.boolean "pc_client", default: false
    t.text "first_name"
    t.text "last_name"
    t.text "phone_number"
    t.text "pword"
    t.text "contact_email"
    t.integer "content_code"
    t.integer "client_code"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "sign_in_count"
    t.boolean "exec"
    t.integer "connect_code", default: 0
    t.boolean "member", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "reference_code"
    t.integer "admin_id"
    t.index ["admin_id"], name: "index_videos_on_admin_id"
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

end
