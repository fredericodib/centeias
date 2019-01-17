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

ActiveRecord::Schema.define(version: 20181123184643) do

  create_table "access_logs", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "access_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_access_logs_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.string "text"
    t.integer "folder_id"
    t.integer "users_id"
    t.index ["folder_id"], name: "index_articles_on_folder_id"
    t.index ["users_id"], name: "index_articles_on_users_id"
  end

  create_table "folders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.integer "users_id"
    t.index ["users_id"], name: "index_folders_on_users_id"
  end

  create_table "operation_logs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "article_id"
    t.integer "folder_id"
    t.integer "sub_article_id"
    t.integer "request_id"
    t.string "operation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_operation_logs_on_article_id"
    t.index ["folder_id"], name: "index_operation_logs_on_folder_id"
    t.index ["request_id"], name: "index_operation_logs_on_request_id"
    t.index ["sub_article_id"], name: "index_operation_logs_on_sub_article_id"
    t.index ["user_id"], name: "index_operation_logs_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.integer "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "requests", force: :cascade do |t|
    t.boolean "done"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "articles_id"
    t.integer "sub_articles_id"
    t.integer "users_id"
    t.index ["articles_id"], name: "index_requests_on_articles_id"
    t.index ["sub_articles_id"], name: "index_requests_on_sub_articles_id"
    t.index ["users_id"], name: "index_requests_on_users_id"
  end

  create_table "sub_articles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "description"
    t.string "text"
    t.integer "article_id"
    t.integer "users_id"
    t.index ["article_id"], name: "index_sub_articles_on_article_id"
    t.index ["users_id"], name: "index_sub_articles_on_users_id"
  end

  create_table "subtopics", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_subtopics_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "admin_flag"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
