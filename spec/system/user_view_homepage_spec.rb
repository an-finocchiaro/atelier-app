require 'rails_helper'

describe 'Usuário acessa a página inicial do site' do
  it 'com sucesso' do
  
    visit '/'
    
    expect(page).to have_link 'ATELIER CITÉ'
    expect(page).to have_link 'Isabelle Tuchband'
    expect(page).to have_link 'Émile Tuchband'
    expect(page).to have_link 'Verena Matzen'
    expect(page).to have_link 'Sala de Exposição'
    expect(page).to have_link 'Loja | Edições Limitadas'
    expect(page).to have_link 'Contato'
  end
end
