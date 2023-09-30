# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_09_30_103428) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_masters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "admin_id"
    t.uuid "master_id"
    t.index ["admin_id"], name: "index_admin_masters_on_admin_id"
    t.index ["master_id"], name: "index_admin_masters_on_master_id"
  end

  create_table "admins", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "photo_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "master_id"
    t.index ["master_id"], name: "index_articles_on_master_id"
    t.index ["title"], name: "index_articles_on_title"
  end

  create_table "certificates", force: :cascade do |t|
    t.string "name"
    t.string "photo_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "master_id"
    t.index ["master_id"], name: "index_certificates_on_master_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "link"
    t.string "phone_number"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "master_id"
    t.index ["master_id"], name: "index_contacts_on_master_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "master_id"
    t.index ["master_id"], name: "index_discounts_on_master_id"
  end

  create_table "masters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "name", null: false
    t.text "about_me"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_masters_on_name", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.string "photo_link"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "master_id"
    t.index ["master_id"], name: "index_reviews_on_master_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "master_id", null: false
    t.index ["master_id"], name: "index_services_on_master_id"
  end

  add_foreign_key "admin_masters", "admins"
  add_foreign_key "admin_masters", "masters"
  add_foreign_key "articles", "masters"
  add_foreign_key "certificates", "masters"
  add_foreign_key "contacts", "masters"
  add_foreign_key "discounts", "masters"
  add_foreign_key "reviews", "masters"
  add_foreign_key "services", "masters"
end
