json.extract! bookmark, :id, :group_id, :category_id, :url, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
