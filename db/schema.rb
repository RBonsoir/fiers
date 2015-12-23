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

ActiveRecord::Schema.define(version: 20151223150645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_selections", force: :cascade do |t|
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
    t.integer  "image_id"
  end

  add_index "article_selections", ["article_id"], name: "index_article_selections_on_article_id", using: :btree
  add_index "article_selections", ["image_id"], name: "index_article_selections_on_image_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "text_fr"
    t.string   "text_en"
    t.string   "status"
    t.integer  "maker_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "author_id"
    t.string   "template_name"
  end

  add_index "articles", ["maker_id"], name: "index_articles_on_maker_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "product_or_maker_id"
    t.string   "product_or_maker_type"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "images", ["product_or_maker_type", "product_or_maker_id"], name: "index_images_on_product_or_maker_type_and_product_or_maker_id", using: :btree

  create_table "makers", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "phone"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "products", ["maker_id"], name: "index_products_on_maker_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "article_selections", "articles"
  add_foreign_key "article_selections", "images"
  add_foreign_key "articles", "makers"
  add_foreign_key "articles", "users", column: "author_id"
  add_foreign_key "products", "makers"
end
