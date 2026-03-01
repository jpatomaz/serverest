#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - GET /users

  Cenario: Efetuar Listagem de usuários com sucesso
    Dado que envio uma requisição "GET" para o endpoint "/usuarios"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes campos:
      | quantidade |
      | usuarios   |

  Cenario: Efetuar consulta de usuário por id
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | _id | 0uxuPY0cbmQhpEz1 |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | usuarios | {nome=Fulano da Silva, email=fulano@qa.com, password=teste, administrador=true, _id=0uxuPY0cbmQhpEz1} |


  Cenario: Efetuar consulta de usuário por nome
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | nome | Fulano da Silva |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | usuarios | {nome=Fulano da Silva, email=fulano@qa.com, password=teste, administrador=true, _id=0uxuPY0cbmQhpEz1} |


  Cenario: Efetuar consulta de usuário por email
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | email | fulano@qa.com |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | usuarios | {nome=Fulano da Silva, email=fulano@qa.com, password=teste, administrador=true, _id=0uxuPY0cbmQhpEz1} |


  Cenario: Efetuar consulta de usuário com email inválido
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | email | emailinvalido |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | email | email deve ser um email válido |