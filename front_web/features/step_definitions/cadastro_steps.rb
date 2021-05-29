Dado('que acesso a página de login\/cadastro') do
    @app.cadastropage.load
end
  
  Dado('solicito um novo cadastro para o email {string}') do |email|
    @app.cadastropage.iniciar_criacao_conta email
end

Dado('solicito um novo cadastro para o {string}') do |email|
    @app.cadastropage.iniciar_criacao_conta_dois email
end
  
  Dado('preencho os campos do formulário com dados válidos fixos') do
    @app.cadastropage.preencher_form_com_dados_fixos
end
  
  Quando('confirmo o cadastro') do
    @app.cadastropage.confirmar_cadastro
end

Dado('preencho os campos do formulário com dados válidos aleatórios') do
  @app.cadastropage.preencher_form_com_dados_aleatorios
end

Dado('preencho os campos do formulário com {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}') do |gender, first_name, last_name, password, day, month, year, newsletter, company, address, city, zipcode, state, phone, address_name|
  @app.cadastropage.preencher_form_com_dados_de_exemplos(gender, first_name, last_name, password, day, month, year, newsletter, company, address, city, zipcode, state, phone, address_name)

end 

Então('devo ser direcionada a página de minha conta') do
    expect(@app.minhacontapage.page_title.text).to eq ('MY ACCOUNT')
    expect(@app.minhacontapage.account_name.text).to eq (@app.cadastropage.account_full_name)
    
    #expect(@app.minhacontapage.acessou_minha_conta).to be_truthy
end
  