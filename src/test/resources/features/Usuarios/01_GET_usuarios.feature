#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - GET usuarios

  Cenario: Efetuar Listagem de usuários com sucesso
    Dado que envio uma requisição "GET" para o endpoint "/usuarios"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes campos:
      | quantidade |
      | usuarios   |

  Cenario: Efetuar consulta de usuário por id
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | _id | [DataUsuario.Id] |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | usuarios | [DataUsuario.Id] |
    E a resposta deve incluir os seguintes valores:
      | usuarios | [DataUsuario.Email] |


  Cenario: Efetuar consulta de usuário por nome
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | nome | Fulano da Silva |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | usuarios | nome=Fulano da Silva |

  Cenario: Efetuar consulta de usuário por email
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | email | [DataUsuario.Email] |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | usuarios | [DataUsuario.Email] |


  Cenario: Efetuar consulta de usuário com email inválido
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | email | emailinvalido |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | email | email deve ser um email válido |


  Cenario: Efetuar consulta - Erro proposital para demonstrar erro no relatório
    Dado que envio uma requisição "GET" para o endpoint "/usuarios" com os parâmetros:
      | email | emailinvalido |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | email | email deve ser um email válido |