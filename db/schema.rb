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

ActiveRecord::Schema[7.0].define(version: 2022_12_13_134933) do
  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "document"
    t.string "health_system_id"
    t.date "birthday"
    t.string "insurance_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document"], name: "index_patients_on_document", unique: true
    t.index ["health_system_id"], name: "index_patients_on_health_system_id", unique: true
  end

end
