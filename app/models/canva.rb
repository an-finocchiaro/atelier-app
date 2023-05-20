class Canva < ApplicationRecord
  belongs_to :artist
  has_one_attached :image
  validates :code, :title, :technique, :height, :width, :year, :price, presence: true
  validates :code, :height, :width, :price, numericality: true
  enum :status, { available: 0, collection: 1, sold: 2 }
  enum :display, { hide: 0, show: 1 }
end
