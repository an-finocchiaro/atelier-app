require 'rails_helper'

RSpec.describe Canva, type: :model do
  describe '#valid?' do
    it 'false when code is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: '', collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 100, width: 120, year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when title is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: '', technique: 'óleo sobre tela', height: 100, width: 120, year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when technique is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: '', height: 100, width: 120, year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when height is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: '', width: 120, year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when width is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 100, width: '', year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when year is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 100, width: 120, year: '', frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when price is empty' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 100, width: 120, year: 2011, frame:'sem moldura', price: '')

      expect(canva.valid?).to eq false
    end

    it 'false when code is not a number' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 'code', collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 100, width: 120, year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when height is not a number' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 'cem', width: 120, year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when width is not a number' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 'cem', year: 2011, frame:'sem moldura', price: 10000)

      expect(canva.valid?).to eq false
    end

    it 'false when price is not a number' do
      artist = Artist.create!(name: 'Julia Piva')
      canva = Canva.new(artist_id: artist.id, code: 108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, frame:'sem moldura', price: 'dez mil')

      expect(canva.valid?).to eq false
    end
  end
end
