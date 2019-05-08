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

ActiveRecord::Schema.define(version: 2019_04_27_151624) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "cells", force: :cascade do |t|
    t.string "temperature_range"
    t.float "space"
    t.string "dimensions"
    t.integer "net_weight"
    t.string "packed_sizes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cells_monoblocks", id: false, force: :cascade do |t|
    t.integer "cell_id"
    t.integer "monoblock_id"
  end

  create_table "cells_splits", id: false, force: :cascade do |t|
    t.integer "cell_id"
    t.integer "split_id"
  end

  create_table "monoblocks", force: :cascade do |t|
    t.string "refrigerant"
    t.string "temperature_condition"
    t.string "voltage"
    t.float "power_usage"
    t.integer "net_weight"
    t.string "dimensions"
    t.string "packed_sizes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.string "actable_type"
    t.integer "actable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "image_link"
    t.index ["actable_type", "actable_id"], name: "index_products_on_actable_type_and_actable_id"
  end

  create_table "splits", force: :cascade do |t|
    t.string "refrigerant"
    t.string "temperature_condition"
    t.string "voltage"
    t.float "power_usage"
    t.integer "net_weight"
    t.string "packed_sizes"
    t.string "inner_dimensions"
    t.string "external_dimensions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_objects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_photos", force: :cascade do |t|
    t.string "image_link"
    t.string "image"
    t.integer "work_object_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_object_id"], name: "index_work_photos_on_work_object_id"
  end

end
