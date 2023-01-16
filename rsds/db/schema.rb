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

ActiveRecord::Schema[7.0].define(version: 2023_01_16_231403) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "player", id: false, force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "reservations_id"
    t.boolean "isCreator"
    t.index ["reservations_id"], name: "index_player_on_reservations_id"
    t.index ["users_id"], name: "index_player_on_users_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.boolean "lookingForPlayer"
    t.datetime "reservationDate"
    t.datetime "reservationStartTime"
    t.datetime "reservationEndTime"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "transaction"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.string "userSurname"
    t.string "userPassword"
    t.string "userEmail"
    t.date "userBirthDate"
    t.string "userPhoneNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
