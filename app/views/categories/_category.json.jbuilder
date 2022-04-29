json.extract! category, :id, :parent_category_id, :is_public, :title, :created_at, :updated_at
json.url category_url(category, format: :json)
