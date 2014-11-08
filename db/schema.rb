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

ActiveRecord::Schema.define(version: 20141108190747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "familles", force: true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vegetaux", force: true do |t|
    t.string   "nom_common"
    t.integer  "famille_id"
    t.string   "classe"
    t.string   "genre"
    t.string   "espece"
    t.string   "origine_geographique"
    t.string   "cycle_biologique"
    t.string   "racine"
    t.string   "tige"
    t.string   "feuillage"
    t.string   "fleur"
    t.string   "fruit"
    t.string   "graine"
    t.string   "modes_de_multiplication_possibles"
    t.string   "systemes_de_production_adaptes"
    t.string   "mise_en_place_de_la_culture"
    t.string   "calendrier_cultural"
    t.string   "entretien_de_la_culture"
    t.string   "exigences_edaphiques_ideales"
    t.string   "irrigation"
    t.string   "fertilisation"
    t.string   "problemes_phytosanitaires_et_protections_adaptees"
    t.string   "importance_economique"
    t.string   "utilisation"
    t.string   "diversification"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "exigences_climatiques"
  end

  add_index "vegetaux", ["famille_id"], name: "index_vegetaux_on_famille_id", using: :btree

end
