require 'rails_helper'

describe 'Usuário acessa a página inicial do site' do
  it 'com sucesso' do
  
    visit '/'
    
    expect(page).to have_link 'ATELIER CITÉ'
    expect(page).to have_link 'ISABELLE TUCHBAND'
    expect(page).to have_link 'ÉMILE TUCHBAND'
    expect(page).to have_link 'VERENA MATZEN'
    expect(page).to have_link 'À LA UNE'
    expect(page).to have_link 'LOJA | EDIÇÕES LIMITADAS'
    expect(page).to have_link 'CONTATO'
  end
end
