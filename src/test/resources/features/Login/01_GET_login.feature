#language: pt
#enconding: utf-8

@api
Funcionalidade: Login - GET /login

  Cenario: Efetuar Login com sucesso
    Dado que envio uma requisição "POST" para o endpoint "/login" com os dados:
      | email    | fulano@qa.com |
      | password | teste         |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Login realizado com sucesso |


  Cenario: Efetuar Login com dados inválidos
    Dado que envio uma requisição "POST" para o endpoint "/login" com os dados:
      | email    | emailerrado@qa.com |
      | password | teste              |
    Entao devera retornar o status 401
    E a resposta deve incluir os seguintes valores:
      | message | Email e/ou senha inválidos |


  Cenario: Efetuar Login com dados em branco
    Dado que envio uma requisição "POST" para o endpoint "/login" com os dados:
      | email    |[vazio]|
      | password |[vazio]|
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | email    | email não pode ficar em branco    |
      | password | password não pode ficar em branco |