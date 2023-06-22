require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe '#valid?' do
    it 'false when name is empty' do
      artist = Artist.new(name: '')
      
      expect(artist.valid?).to eq false
    end
  end
end
