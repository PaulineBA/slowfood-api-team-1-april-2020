ActiveRecord::Schema.define(version: 2020_05_05_094412) do

  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "category"
    t.integer "price"
    t.string "image_url"
    t.string "tag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
