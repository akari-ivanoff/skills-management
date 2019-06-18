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

ActiveRecord::Schema.define(version: 2019_06_14_125123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sites", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "skill_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_category_id"], name: "index_skills_on_skill_category_id"
  end

  create_table "team_role_skills", force: :cascade do |t|
    t.bigint "team_role_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_team_role_skills_on_skill_id"
    t.index ["team_role_id"], name: "index_team_role_skills_on_team_role_id"
  end

  create_table "team_roles", force: :cascade do |t|
    t.integer "occupancy"
    t.string "name"
    t.bigint "user_id"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_roles_on_team_id"
    t.index ["user_id"], name: "index_team_roles_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "owner_contact"
    t.bigint "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "team_manager_id"
    t.index ["site_id"], name: "index_teams_on_site_id"
    t.index ["team_manager_id"], name: "index_teams_on_team_manager_id"
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer "self_assessment"
    t.integer "manager_assessment"
    t.text "self_comment"
    t.text "manager_comment"
    t.text "experience"
    t.bigint "user_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_user_skills_on_skill_id"
    t.index ["user_id"], name: "index_user_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "network_id"
    t.string "job_title"
    t.string "chapter"
    t.integer "availability"
    t.boolean "is_manager"
    t.bigint "site_id"
    t.string "photo", default: "avatar.jpg"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "manager_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["manager_id"], name: "index_users_on_manager_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["site_id"], name: "index_users_on_site_id"
  end

  add_foreign_key "skills", "skill_categories"
  add_foreign_key "team_role_skills", "skills"
  add_foreign_key "team_role_skills", "team_roles"
  add_foreign_key "team_roles", "teams"
  add_foreign_key "team_roles", "users"
  add_foreign_key "teams", "sites"
  add_foreign_key "teams", "users", column: "team_manager_id"
  add_foreign_key "user_skills", "skills"
  add_foreign_key "user_skills", "users"
  add_foreign_key "users", "sites"
  add_foreign_key "users", "users", column: "manager_id"
end
