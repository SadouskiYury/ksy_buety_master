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

ActiveRecord::Schema[7.0].define(version: 2023_08_12_144636) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "role_type", ["admin", "master", "super_admin"]

  create_table "admin_masters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "admin_id", null: false
    t.uuid "master_id", null: false
    t.enum "role", null: false, enum_type: "role_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_masters_on_admin_id"
    t.index ["master_id"], name: "index_admin_masters_on_master_id"
  end

  create_table "admins", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
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
    t.index ["title"], name: "index_articles_on_title"
  end

  create_table "certificates", force: :cascade do |t|
    t.string "name"
    t.string "photo_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "link"
    t.string "phone_number"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "masters", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.text "about_me"
    t.bigint "certificate_id"
    t.bigint "article_id"
    t.bigint "contact_id"
    t.bigint "review_id"
    t.bigint "discount_id"
    t.bigint "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_masters_on_article_id"
    t.index ["certificate_id"], name: "index_masters_on_certificate_id"
    t.index ["contact_id"], name: "index_masters_on_contact_id"
    t.index ["discount_id"], name: "index_masters_on_discount_id"
    t.index ["review_id"], name: "index_masters_on_review_id"
    t.index ["service_id"], name: "index_masters_on_service_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "photo_link"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admin_masters", "admins"
  add_foreign_key "admin_masters", "masters"
  add_foreign_key "masters", "articles"
  add_foreign_key "masters", "certificates"
  add_foreign_key "masters", "contacts"
  add_foreign_key "masters", "discounts"
  add_foreign_key "masters", "reviews"
  add_foreign_key "masters", "services"
end
