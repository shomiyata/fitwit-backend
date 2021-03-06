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

ActiveRecord::Schema.define(version: 20170912185134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.integer "api_id"
    t.string "description"
    t.string "username"
    t.integer "week"
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.string "bio"
    t.integer "points"
    t.integer "days_a_week"
    t.integer "length_of_program"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_sessions", force: :cascade do |t|
    t.datetime "date"
    t.boolean "completed"
    t.integer "user_id"
    t.integer "exercise_one_weight"
    t.integer "exercise_two_weight"
    t.integer "exercise_three_weight"
    t.integer "exercise_four_weight"
    t.integer "exercise_one_reps"
    t.integer "exercise_two_reps"
    t.integer "exercise_three_reps"
    t.integer "exercise_four_reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_sessions_exercises", force: :cascade do |t|
    t.integer "workout_session_id"
    t.integer "exercise_id"
  end

end
