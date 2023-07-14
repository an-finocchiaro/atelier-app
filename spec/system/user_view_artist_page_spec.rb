require 'rails_helper'

describe 'Usuário acessa página de artista' do
  it 'com sucesso' do
    artist = Artist.create!(name: 'Isabelle Tuchband')
    canva = Canva.create!(artist_id: artist.id, code: 1108, collection_name: 'Brasileiras', title: 'Nuvens', technique: 'óleo sobre tela', height: 120, width: 100, year: 2011, frame:'sem moldura', price: 10000)
    other_canva = Canva.create!(artist_id: artist.id, code: 1234, collection_name: 'Ciganas', title: 'Blue Gitane', technique: 'acrílica sobre tela', height: 100, width: 80, year: 2022, frame:'baguete', price: 8000)
    img_path = Rails.root.join('spec/support/images/canva_image.jpeg')
    canva.image.attach(io: img_path.open, filename: 'canva_image.jpeg')
    other_canva.image.attach(io: img_path.open, filename: 'canva_image.jpeg')
  
    visit '/'
    find(:css, '#isabelle-button').click
    
    expect(page).to have_link 'ATELIER CITÉ'
    expect(page).to have_link 'À LA UNE'
    expect(page).to have_link 'LOJA | EDIÇÕES LIMITADAS'
    expect(page).to have_link 'CONTATO'
    
    expect(page).to have_content 'Nuvens'
    expect(page).to have_content '120 x 100 cm'
    expect(page).to have_content '2011'
    expect(page).to have_content 'R$ 10000'
    expect(page).to have_content 'código: 1108'
    expect(page).to have_content 'Blue Gitane'
    expect(page).to have_content '100 x 80 cm'
    expect(page).to have_content '2022'
    expect(page).to have_content 'código: 1234'
    expect(page).to have_content 'R$ 8000'
    expect(page).to have_css('img[src*="canva_image.jpeg"]')
    expect(page).to have_link 'BIOGRAFIA'
  end
end