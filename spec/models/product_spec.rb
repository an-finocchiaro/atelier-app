require 'rails_helper'
=begin
RSpec.describe Product, type: :model do
  describe '#valid?' do
    it 'false when sku is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      product = Product.new(artist_id: artist.id, sku: '', collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 100, width: 120, year: 2011, edition:'exemplar único', price: 10000)

      expect(product.valid?).to eq false
    end
  end
end
=end