Dado('que acesso a página de login\/cadastro') do
    @app.cadastropage.load
end
  
  Dado('solicito um novo cadastro para o email {string}') do |email|
    @app.cadastropage.iniciar_criacao_conta email
end
  
  Dado('preencho os campos do formulário com dados válidos fixos') do
    @app.cadastropage.preencher_form_com_dados_fixos
end
  
  Quando('confirmo o cadastro') do
    @app.cadastropage.confirmar_cadastro
end
  
  Então('devo ser direcionada a página de minha conta') do
    expect(@app.minhacontapage.page_title.text).to eq ('MY ACCOUNT')
    expect(@app.minhacontapage.account_name.text).to eq ('Gabriela Mendes')
    
    #expect(@app.minhacontapage.acessou_minha_conta).to be_truthy
end
  