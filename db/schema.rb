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

ActiveRecord::Schema.define(version: 20140909182346) do

  create_table "formapagos", force: true do |t|
    t.string   "fpa_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movimientos", force: true do |t|
    t.date     "mov_fecha"
    t.decimal  "mov_importe",  precision: 10, scale: 0
    t.text     "mov_obs"
    t.integer  "mov_lote"
    t.integer  "subrubro_id"
    t.integer  "tipogasto_id"
    t.integer  "tipomov_id"
    t.integer  "formapago_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "movimientos", ["formapago_id"], name: "index_movimientos_on_formapago_id", using: :btree
  add_index "movimientos", ["subrubro_id"], name: "index_movimientos_on_subrubro_id", using: :btree
  add_index "movimientos", ["tipogasto_id"], name: "index_movimientos_on_tipogasto_id", using: :btree
  add_index "movimientos", ["tipomov_id"], name: "index_movimientos_on_tipomov_id", using: :btree
  add_index "movimientos", ["user_id"], name: "index_movimientos_on_user_id", using: :btree

  create_table "queries", force: true do |t|
    t.date     "con_fechad"
    t.date     "con_fechah"
    t.text     "con_descripcion"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "queries", ["user_id"], name: "index_queries_on_user_id", using: :btree

  create_table "rubros", force: true do |t|
    t.string   "rub_desc"
    t.boolean  "rub_suma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subrubros", force: true do |t|
    t.string   "sru_desc"
    t.integer  "rubro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subrubros", ["rubro_id"], name: "index_subrubros_on_rubro_id", using: :btree

  create_table "tipogastos", force: true do |t|
    t.string   "tga_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipomovs", force: true do |t|
    t.string   "tmo_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "profile_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
