#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - POST /usuarios

  Cenario: Cadastrar usuario com sucesso
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [Gera Nome]  |
      | email         | [Gera Email] |
      | password      | teste500     |
      | administrador | false        |
    Entao devera retornar o status 201
    E a resposta deve incluir os seguintes valores:
      | message | Cadastro realizado com sucesso |


  Cenario: Cadastrar usuario - Email inválido
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [Gera Nome]   |
      | email         | emailinvalido |
      | password      | teste500      |
      | administrador | false         |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | email | email deve ser um email válido |


  Cenario: Cadastrar usuario - Email já utilizado
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [Gera Nome]   |
      | email         | fulano@qa.com |
      | password      | teste500      |
      | administrador | false         |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | message | Este email já está sendo usado |


  Cenario: Cadastrar usuario - Nome em branco
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [vazio]      |
      | email         | [Gera Email] |
      | password      | teste500     |
      | administrador | false        |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | nome | nome não pode ficar em branco |

  Cenario: Cadastrar usuario - Email em branco
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [Gera Nome] |
      | email         | [vazio]     |
      | password      | teste500    |
      | administrador | false       |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | email | email não pode ficar em branco |

  Cenario: Cadastrar usuario - Password em branco
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [Gera Nome]  |
      | email         | [Gera Email] |
      | password      | [vazio]      |
      | administrador | false        |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | password | password não pode ficar em branco |


  Cenario: Cadastrar usuario - Administrador em branco
    Dado que envio uma requisição "POST" para o endpoint "/usuarios" com os dados:
      | nome          | [Gera Nome]  |
      | email         | [Gera Email] |
      | password      | teste        |
      | administrador | [vazio]      |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | administrador | administrador deve ser 'true' ou 'false' |