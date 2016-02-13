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

ActiveRecord::Schema.define(version: 20160213200057) do

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",    limit: nil, null: false
    t.string   "data_content_type", limit: nil
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "faculties", force: true do |t|
    t.string   "name",       limit: nil
    t.text     "content"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "latest_news", force: true do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "left_sidebars", force: true do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: true do |t|
    t.string   "name",       limit: nil
    t.text     "content"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "primary_menus", force: true do |t|
    t.string   "name",       limit: nil
    t.string   "link",       limit: nil
    t.integer  "order"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "secondary_menus", force: true do |t|
    t.string   "name",       limit: nil
    t.string   "link",       limit: nil
    t.integer  "order"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
