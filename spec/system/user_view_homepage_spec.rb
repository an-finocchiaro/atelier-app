require 'rails_helper'

describe 'Usuário acessa a página inicial do site' do
  it 'com sucesso' do
  
    visit '/'
    
    expect(page).to have_link 'artistas'
    expect(page).to have_link 'o atelier'
    expect(page).to have_link 'viewing room'
    expect(page).to have_link 'loja'
    expect(page).to have_link 'contato'
    #expect(page).to have_link 'Isabelle Tuchband'
    #expect(page).to have_link 'Émile Tuchband'
    #expect(page).to have_link 'Verena Matzen'
    
  end
end
