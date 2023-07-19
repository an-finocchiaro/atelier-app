class Canva < ApplicationRecord
  belongs_to :artist
  has_one_attached :image
  validates :code, :title, :technique, :height, :width, :year, :price, presence: true
  validates :height, :width, :price, numericality: true
  validates :code, length: { in: 3..5 }
  enum :status, { available: 0, collection: 1, sold: 2 }
  enum :display, { hide: 0, exhibit: 1 }
end
