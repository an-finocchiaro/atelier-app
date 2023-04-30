class Canva < ApplicationRecord
  belongs_to :artist
  has_one_attached :image
  enum :status, { available: 0, collection: 1, sold: 2 }
  enum :display, { hide: 0, show: 1 }
end
