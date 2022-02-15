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

ActiveRecord::Schema.define(version: 2022_02_01_172953) do

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.date "birth_date"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"name\", \"phone_id\"", name: "index_contacts_on_name_and_phone_id", unique: true
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number", null: false
    t.string "category", null: false
    t.boolean "main_phone", null: false
    t.integer "contact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"category\", \"user_id\"", name: "index_phones_on_category_and_user_id", unique: true
    t.index ["contact_id"], name: "index_phones_on_contact_id"
    t.index ["number"], name: "index_phones_on_number", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "contacts", "users"
  add_foreign_key "phones", "contacts"
end
