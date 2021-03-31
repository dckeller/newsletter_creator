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

ActiveRecord::Schema.define(version: 2021_03_31_000056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bannersets", force: :cascade do |t|
    t.string "display_img"
    t.bigint "newsletter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["newsletter_id"], name: "index_bannersets_on_newsletter_id"
  end

  create_table "headers", force: :cascade do |t|
    t.datetime "date"
    t.string "header_image"
    t.string "subject_line"
    t.text "body_copy"
    t.bigint "newsletter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["newsletter_id"], name: "index_headers_on_newsletter_id"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string "gct_id"
    t.string "adv_id"
    t.string "adv_name"
    t.datetime "send_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "closed", default: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "banner_id"
    t.string "banner_size"
    t.bigint "bannerset_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bannerset_id"], name: "index_sizes_on_bannerset_id"
  end

  create_table "textlinks", force: :cascade do |t|
    t.string "link_id"
    t.string "copy"
    t.bigint "newsletter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["newsletter_id"], name: "index_textlinks_on_newsletter_id"
  end

  add_foreign_key "bannersets", "newsletters"
  add_foreign_key "headers", "newsletters"
  add_foreign_key "sizes", "bannersets"
  add_foreign_key "textlinks", "newsletters"
end
