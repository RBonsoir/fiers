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

ActiveRecord::Schema.define(version: 20151221165412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_selections", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "article_selections", ["article_id"], name: "index_article_selections_on_article_id", using: :btree
  add_index "article_selections", ["product_id"], name: "index_article_selections_on_product_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "text_fr"
    t.string   "text_en"
    t.string   "status"
    t.integer  "author_id"
    t.integer  "maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id", using: :btree
  add_index "articles", ["maker_id"], name: "index_articles_on_maker_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "phone"
    t.string   "position"
    t.string   "email"
    t.integer  "maker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contacts", ["maker_id"], name: "index_contacts_on_maker_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "taggings", force: :cascade do |t|
    t.integer  "image_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["image_id"], name: "index_taggings_on_image_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "article_selections", "articles"
  add_foreign_key "article_selections", "products"
  add_foreign_key "articles", "authors"
  add_foreign_key "articles", "makers"
  add_foreign_key "contacts", "makers"
  add_foreign_key "products", "makers"
  add_foreign_key "taggings", "images"
  add_foreign_key "taggings", "tags"
end
