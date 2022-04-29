class Category < ApplicationRecord
  has_many :bookmarks

  # TODO validates - not allowed self referencing
  belongs_to :parent, class_name: "Category", optional: true
  has_many :children, class_name: "Category", foreign_key: "parent_category_id", dependent: :destroy
end
