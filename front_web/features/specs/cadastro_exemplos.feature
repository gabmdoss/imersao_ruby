#language: pt

Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_exemplos
Esquema do Cenário: Cadastrar cliente com dados válidos
Dado que acesso a página de login/cadastro
E solicito um novo cadastro para o email <email> 
E preencho os campos do formulário com <gender>, <first_name>, <last_name>, <password>, <day>, <month>, <year>, <newsletter>, <company>, <address>, <city>, <zipcode>, <state>, <phone>, <address_name>
Quando confirmo o cadastro
Então devo ser direcionada a página de minha conta

Exemplos:
|   email                  | gender | first_name | last_name |  password   | day  | month   |  year   | newsletter | company  | address          | city             | zipcode | state  | phone           | address_name |
|'paula_rgghgu9by@guts.com'   | 'masc' | 'Paula'    | 'Silba'   | '12369578'  | '10' | 'March' | '1980'  |  'no'      | 'ABCnow' | 'Rua 3, lote 54' | 'Rio de Janeiro' | '59632' | 'Iowa' | '5551566852242' | 'Casa'       |
|'paula_ruhhbh8gy_l@guts.com' | 'fem ' | 'Marina'   | 'Silva'   | '12359578'  | '13' | 'March' | '1981'  |  'yes'     | 'ABCnaw' | 'Rua 2, lote 52' | 'São Paulo'      | '56852' | 'Iowa' | '5555668546242' | 'Casa'       |
