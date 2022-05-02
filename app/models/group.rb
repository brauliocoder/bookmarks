class Group < ApplicationRecord
  validates :name, presence: true

  has_many :bookmarks, dependent: :destroy
end
