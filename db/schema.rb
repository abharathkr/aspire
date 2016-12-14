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

ActiveRecord::Schema.define(version: 20161211041221) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_name"
  end

  create_table "choices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "choice",      limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "question_id"
    t.index ["question_id"], name: "index_choices_on_question_id", using: :btree
  end

  create_table "emails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_name"
  end

  create_table "old_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "f1"
    t.string   "f2"
    t.string   "f3"
    t.string   "f4"
    t.string   "f5"
    t.text     "comment",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.text     "comment1",   limit: 65535
    t.text     "comment2",   limit: 65535
    t.text     "comment3",   limit: 65535
    t.text     "comment4",   limit: 65535
    t.text     "comment5",   limit: 65535
    t.text     "comment6",   limit: 65535
    t.text     "comment7",   limit: 65535
    t.text     "comment8",   limit: 65535
    t.index ["user_id"], name: "index_old_feedbacks_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "place"
    t.bigint   "phonenumber"
    t.string   "degree1p"
    t.string   "degree1c"
    t.string   "degree2p"
    t.string   "degree2c"
    t.string   "twelvep"
    t.string   "twelvec"
    t.string   "tenthp"
    t.string   "tenthc"
    t.text     "technicalskills",    limit: 65535
    t.text     "nontechnicalskills", limit: 65535
    t.text     "analyticalskills",   limit: 65535
    t.text     "projects",           limit: 65535
    t.text     "coursestaken",       limit: 65535
    t.text     "goodat",             limit: 65535
    t.text     "dreamjob",           limit: 65535
    t.text     "awards",             limit: 65535
    t.text     "internship",         limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "tenths"
    t.string   "twelveplace"
    t.string   "degree1branch"
    t.string   "degree2branch"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "question",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "choices", "questions"
  add_foreign_key "old_feedbacks", "users"
  add_foreign_key "profiles", "users"
end
