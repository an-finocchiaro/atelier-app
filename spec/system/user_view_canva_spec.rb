require 'rails_helper'

describe 'Usuário vê detalhes de pintura' do
  it 'com sucesso' do
    artist = Artist.create!(name: 'Isabelle Tuchband')
    canva = Canva.create!(artist_id: artist.id, code: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, frame:'sem moldura', price: 10000, display: :exhibit, status: :available)
    other_canva = Canva.create!(artist_id: artist.id, code: 1234, collection_name: 'Ciganas', title: 'Blue Gitane', technique: 'acrílica sobre tela', height: 100, width: 80, year: 2022, frame:'baguete', price: 8000, display: :exhibit)
    img_path = Rails.root.join('spec/support/images/canva_image.jpeg')
    canva.image.attach(io: img_path.open, filename: 'canva_image.jpeg')
    other_canva.image.attach(io: img_path.open, filename: 'canva_image.jpeg')
  
    visit '/'
    find(:css, '#isabelle-button').click
    click_on 'Nuvens'
    
    expect(page).to have_content 'Nuvens'
    expect(page).to have_content 'Isabelle Tuchband'
    expect(page).to have_content '120 x 100 cm'
    expect(page).to have_content '2011'
    expect(page).to have_content 'referência: 1108'
    expect(page).to have_content 'disponível'
    expect(page).to have_css('img[src*="canva_image.jpeg"]')
    expect(page).to have_link 'BIOGRAFIA'
    expect(page).to have_link 'SOLICITAR LISTA DE PREÇOS'
  end
end