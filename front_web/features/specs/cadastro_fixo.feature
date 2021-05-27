#language: pt

Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_dados_fixos
Cenário: Cadastrar cliente com dados válidos e fixos
Dado que acesso a página de login/cadastro
E solicito um novo cadastro para o email 'imersão_ruby_front2@guts.com.br'
E preencho os campos do formulário com dados válidos fixos
Quando confirmo o cadastro
Então devo ser direcionada a página de minha conta
