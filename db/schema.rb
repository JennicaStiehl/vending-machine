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

ActiveRecord::Schema[7.0].define(version: 2022_08_06_005230) do
  create_table "coins", force: :cascade do |t|
    t.decimal "weight"
    t.decimal "size"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.integer "Product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Product_id"], name: "index_machines_on_Product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.decimal "price"
    t.integer "vendor_id"
    t.integer "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_products_on_machine_id"
    t.index ["vendor_id"], name: "index_products_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
