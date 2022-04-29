class Category < ApplicationRecord
  has_many :bookmarks

  belongs_to :parent, class_name: "Category", foreign_key: "parent_category_id", optional: true
  has_many :children, class_name: "Category", foreign_key: "parent_category_id"
end
