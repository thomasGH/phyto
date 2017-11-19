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

ActiveRecord::Schema.define(version: 20171119084718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classifications", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "hierarchy_id"
    t.integer  "classification_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "classifications", ["classification_id"], name: "index_classifications_on_classification_id", using: :btree
  add_index "classifications", ["hierarchy_id"], name: "index_classifications_on_hierarchy_id", using: :btree

  create_table "compositions", force: :cascade do |t|
    t.string   "number"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "effects", force: :cascade do |t|
    t.text     "description"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "effects_herbs", force: :cascade do |t|
    t.integer  "effect_id"
    t.integer  "herb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "effects_herbs", ["effect_id"], name: "index_effects_herbs_on_effect_id", using: :btree
  add_index "effects_herbs", ["herb_id"], name: "index_effects_herbs_on_herb_id", using: :btree

  create_table "herbs", force: :cascade do |t|
    t.string   "name"
    t.string   "latin_name"
    t.string   "popular_name"
    t.text     "description"
    t.integer  "activity_id"
    t.integer  "classification_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "herbs", ["activity_id"], name: "index_herbs_on_activity_id", using: :btree
  add_index "herbs", ["classification_id"], name: "index_herbs_on_classification_id", using: :btree

  create_table "herbs_compositions", force: :cascade do |t|
    t.integer  "herb_id"
    t.integer  "composition_id"
    t.string   "part"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "herbs_compositions", ["composition_id"], name: "index_herbs_compositions_on_composition_id", using: :btree
  add_index "herbs_compositions", ["herb_id"], name: "index_herbs_compositions_on_herb_id", using: :btree

  create_table "hierarchies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "classifications", "classifications"
  add_foreign_key "classifications", "hierarchies"
  add_foreign_key "effects_herbs", "effects"
  add_foreign_key "effects_herbs", "herbs"
  add_foreign_key "herbs", "activities"
  add_foreign_key "herbs", "classifications"
  add_foreign_key "herbs_compositions", "compositions"
  add_foreign_key "herbs_compositions", "herbs"
end
