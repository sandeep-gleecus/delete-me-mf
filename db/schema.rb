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

ActiveRecord::Schema.define(version: 2023_02_27_131706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "activities", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.string "activity_type", null: false
    t.integer "time_spent"
    t.integer "calories_burned"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date", null: false
    t.time "time", null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title", null: false
    t.integer "views", default: 0
    t.text "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cancellations", force: :cascade do |t|
    t.string "reason"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "detail"
    t.index ["user_id"], name: "index_cancellations_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ancestry"
    t.string "category_type"
    t.index ["ancestry"], name: "index_categories_on_ancestry"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "commentable_id", null: false
    t.string "commentable_type", null: false
    t.string "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "completed_lessons", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id"], name: "index_completed_lessons_on_lesson_id"
    t.index ["user_id", "lesson_id"], name: "index_completed_lessons_on_user_id_and_lesson_id", unique: true
    t.index ["user_id"], name: "index_completed_lessons_on_user_id"
  end

  create_table "food_entries", force: :cascade do |t|
    t.string "title", null: false
    t.integer "calories_consumed", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date", null: false
    t.time "time", null: false
    t.index ["user_id"], name: "index_food_entries_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "journal_entries", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date", null: false
    t.time "time", null: false
    t.index ["user_id"], name: "index_journal_entries_on_user_id"
  end

  create_table "lesson_categories", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_lesson_categories_on_category_id"
    t.index ["lesson_id"], name: "index_lesson_categories_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "duration"
    t.string "calories_burned"
    t.string "vimeo_url"
    t.datetime "start_time", precision: 6
    t.boolean "live", default: false, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "lesson_type", null: false
    t.string "zoom_url"
    t.string "href"
    t.string "igtv_url"
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "likeable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "likeable_type", null: false
    t.index ["likeable_id", "likeable_type"], name: "index_likes_on_likeable_id_and_likeable_type"
    t.index ["likeable_id"], name: "index_likes_on_likeable_id"
    t.index ["user_id", "likeable_id", "likeable_type"], name: "index_likes_on_user_id_and_likeable_id_and_likeable_type", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "popular_searches", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "promoted", default: false, null: false
    t.string "slug"
    t.string "meta_title"
    t.string "meta_description"
    t.string "excerpt", default: " ", null: false
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["slug"], name: "index_posts_on_slug", unique: true
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.integer "prep_time", null: false
    t.integer "cook_time", null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "promoted", default: false, null: false
    t.string "slug"
    t.string "meta_title"
    t.string "meta_description"
    t.string "excerpt", default: " ", null: false
    t.boolean "pinned", default: false, null: false
    t.index ["category_id"], name: "index_recipes_on_category_id"
    t.index ["slug"], name: "index_recipes_on_slug", unique: true
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false, null: false
    t.string "name"
    t.string "motherhood_stage"
    t.date "pregnancy_due_date"
    t.date "birth_date"
    t.date "most_recent_birth_date"
    t.integer "height"
    t.integer "daily_calorie_goal"
    t.string "stripe_id"
    t.string "fitness_goal"
    t.string "activity_multiplier"
    t.date "date_of_birth"
    t.jsonb "subscription"
    t.boolean "free_subscription", default: false, null: false
    t.string "intercom_id"
    t.string "phone_number"
    t.jsonb "invoice_payment_fail_wh"
    t.jsonb "invoice_payment_success_wh"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weight_entries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "weight", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weight_entries_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "activities", "users"
  add_foreign_key "completed_lessons", "lessons"
  add_foreign_key "completed_lessons", "users"
  add_foreign_key "lesson_categories", "categories"
  add_foreign_key "lesson_categories", "lessons"
  add_foreign_key "lessons", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "users"
  add_foreign_key "recipes", "categories"
  add_foreign_key "recipes", "users"
end
