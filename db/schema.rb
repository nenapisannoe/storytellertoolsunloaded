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

ActiveRecord::Schema[8.0].define(version: 2025_07_15_134330) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "characters", force: :cascade do |t|
    t.text "name"
    t.text "clan"
    t.integer "generation"
    t.text "sire"
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_characters_on_player_id"
    t.check_constraint "clan = ANY (ARRAY['Banu Haqim'::text, 'Brujah'::text, 'Gangrel'::text, 'Hecata'::text, 'Lasombra'::text, 'Malkavian'::text, 'The Ministry'::text, 'Nosferatu'::text, 'Ravnos'::text, 'Toreador'::text, 'Tremere'::text, 'Tzimisce'::text, 'Ventrue'::text, 'Caitiff'::text, 'Thin-blood'::text])", name: "check_valid_clan"
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_players_on_name", unique: true
  end

  add_foreign_key "characters", "players"
end
