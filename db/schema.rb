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

ActiveRecord::Schema.define(version: 2021_10_15_173224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "artpieces", force: :cascade do |t|
    t.string "artists"
    t.string "piece"
    t.string "artstyle"
    t.string "img_src"
    t.bigint "artsession_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artsession_id"], name: "index_artpieces_on_artsession_id"
  end

  create_table "artsessions", force: :cascade do |t|
    t.string "artstyle"
    t.string "price"
    t.string "sessiontype"
    t.integer "piecespergroup"
    t.bigint "customergroup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customergroup_id"], name: "index_artsessions_on_customergroup_id"
  end

  create_table "brandofwines", force: :cascade do |t|
    t.string "brand"
    t.integer "age"
    t.string "winetype"
    t.string "price"
    t.string "drysweet"
    t.string "alcoholcontent"
    t.string "img_src"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customergroups", force: :cascade do |t|
    t.string "party"
    t.integer "partyquantity"
    t.string "customerstatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "imageelements", force: :cascade do |t|
    t.bigint "brandofwine_id", null: false
    t.bigint "artpiece_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artpiece_id"], name: "index_imageelements_on_artpiece_id"
    t.index ["brandofwine_id"], name: "index_imageelements_on_brandofwine_id"
  end

  create_table "winepurchases", force: :cascade do |t|
    t.string "purchasepackage"
    t.string "purchased"
    t.bigint "brandofwine_id", null: false
    t.bigint "customergroup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brandofwine_id"], name: "index_winepurchases_on_brandofwine_id"
    t.index ["customergroup_id"], name: "index_winepurchases_on_customergroup_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "artpieces", "artsessions"
  add_foreign_key "artsessions", "customergroups"
  add_foreign_key "imageelements", "artpieces"
  add_foreign_key "imageelements", "brandofwines"
  add_foreign_key "winepurchases", "brandofwines"
  add_foreign_key "winepurchases", "customergroups"
end
