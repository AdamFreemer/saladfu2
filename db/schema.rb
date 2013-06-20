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

ActiveRecord::Schema.define(version: 20130620041507) do

  create_table "dressings", force: true do |t|
    t.integer  "dressing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salad_toppings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "alfala_sprouts"
    t.boolean  "artichokes"
    t.boolean  "avocado"
    t.boolean  "baby_corn"
    t.boolean  "bacon_bits"
    t.boolean  "beets"
    t.boolean  "black_olives"
    t.boolean  "blue_cheese"
    t.boolean  "broccoli"
    t.boolean  "cajun"
    t.boolean  "carrots"
    t.boolean  "celery"
    t.boolean  "cheddar"
    t.boolean  "chick_peas"
    t.boolean  "chicken"
    t.boolean  "chicken_cutlet"
    t.boolean  "corn"
    t.boolean  "cranberries"
    t.boolean  "cucumber"
    t.boolean  "dried"
    t.boolean  "eggs"
    t.boolean  "feta_cheese"
    t.boolean  "green_olives"
    t.boolean  "green_peas"
    t.boolean  "grilled_chicken"
    t.boolean  "ham"
    t.boolean  "heart_of_palm"
    t.boolean  "mandarin_oranges"
    t.boolean  "monterey_jack"
    t.boolean  "mozzarella"
    t.boolean  "mushrooms"
    t.boolean  "oranges"
    t.boolean  "parmesan_cheese"
    t.boolean  "pasta"
    t.boolean  "peppers"
    t.boolean  "plum"
    t.boolean  "red_kidney_beans"
    t.boolean  "red_onions"
    t.boolean  "roasted_red_peppers"
    t.boolean  "scallions"
    t.boolean  "sesame_chicken"
    t.boolean  "string_beans"
    t.boolean  "toamatoes"
    t.boolean  "tofu"
    t.boolean  "tomatoes"
    t.boolean  "tuna"
    t.boolean  "turkey"
    t.boolean  "white_tuna"
  end

  create_table "salads", force: true do |t|
    t.string   "salad_name"
    t.string   "description"
    t.integer  "votes"
    t.string   "lettuce_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "image"
    t.boolean  "cheese"
    t.boolean  "tomatoes"
    t.boolean  "cucumbers"
    t.boolean  "croutons"
  end

  add_index "salads", ["user_id"], name: "index_salads_on_user_id"

  create_table "toppingizations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toppings", force: true do |t|
    t.string   "topping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
