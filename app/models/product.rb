class Product < ApplicationRecord
  belongs_to :artist
  has_one_attached :image
  validates :sku, :title, :technique, :height, :width, :year, :price, presence: true
  validates :height, :width, :price, numericality: true
  validates :sku, length: { in: 3..7 }
end
