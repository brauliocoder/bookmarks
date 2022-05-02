class Bookmark < ApplicationRecord
  validates_presence_of :url, :title

  belongs_to :group, optional: true
  belongs_to :category
end
