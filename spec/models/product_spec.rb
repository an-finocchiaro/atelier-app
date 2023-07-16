require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#valid?' do
    it 'false when sku is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: '', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when title is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: '', technique: 'acrílica sobre tela', height: 50, width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when technique is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: '', height: 50, width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when height is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: '', width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when width is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: '', year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when year is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 60, year: '', edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when price is empty' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 60, year: 2020, edition:'exemplar único', price: '')

      expect(product.valid?).to eq false
    end

    it 'false when height is not a number' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 'cem', width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when width is not a number' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 'cem', year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when price is not a number' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT2027', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 60, year: 2020, edition:'exemplar único', price: 'cem')

      expect(product.valid?).to eq false
    end

    it 'false when sku length is < 3' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: '27', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end

    it 'false when sku length is > 7' do
      artist = Artist.create!(name: 'Isabelle Tuchband')
      product = Product.new(artist_id: artist.id, sku: 'IT202728', collection_name: 'Sevilla', title: 'Blue Gitana', technique: 'acrílica sobre tela', height: 50, width: 60, year: 2020, edition:'exemplar único', price: 5000)

      expect(product.valid?).to eq false
    end
  end
end