class Category < ApplicationRecord
  validates :title, presence: true

  has_many :bookmarks, dependent: :destroy

  # TODO validates - not allowed self referencing
  belongs_to :parent, class_name: "Category", foreign_key: "parent_category_id", optional: true
  has_many :children, class_name: "Category", foreign_key: "parent_category_id", dependent: :destroy

  scope :root_parents, -> { where(parent_category_id: nil) }

  def is_empty?
    if bookmarks.count == 0 && children.count == 0
      return true
    else
      return false
    end
  end
end
