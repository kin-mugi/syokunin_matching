# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_24_065319) do

  create_table "chats", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.text "topic"
    t.integer "cost_minimum"
    t.integer "cost_maximum"
    t.text "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "order_list"
    t.text "category"
  end

  create_table "p_entries", force: :cascade do |t|
    t.integer "placing_order_id"
    t.integer "p_room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["p_room_id"], name: "index_p_entries_on_p_room_id"
    t.index ["placing_order_id"], name: "index_p_entries_on_placing_order_id"
  end

  create_table "p_messages", force: :cascade do |t|
    t.integer "placing_order_id"
    t.integer "p_room_id"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["p_room_id"], name: "index_p_messages_on_p_room_id"
    t.index ["placing_order_id"], name: "index_p_messages_on_placing_order_id"
  end

  create_table "p_rooms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "r_entries", force: :cascade do |t|
    t.integer "recieving_order_id"
    t.integer "r_room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["r_room_id"], name: "index_r_entries_on_r_room_id"
    t.index ["recieving_order_id"], name: "index_r_entries_on_recieving_order_id"
  end

  create_table "r_messages", force: :cascade do |t|
    t.integer "recieving_order_id"
    t.integer "r_room_id"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["r_room_id"], name: "index_r_messages_on_r_room_id"
    t.index ["recieving_order_id"], name: "index_r_messages_on_recieving_order_id"
  end

  create_table "r_rooms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "user_rooms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "order_id"
    t.integer "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "p_entries", "p_rooms"
  add_foreign_key "p_entries", "placing_orders"
  add_foreign_key "p_messages", "p_rooms"
  add_foreign_key "p_messages", "placing_orders"
  add_foreign_key "r_entries", "r_rooms"
  add_foreign_key "r_entries", "recieving_orders"
  add_foreign_key "r_messages", "r_rooms"
  add_foreign_key "r_messages", "recieving_orders"
end
