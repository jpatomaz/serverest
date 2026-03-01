#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - PUT usuarios_id

  Cenario: Alterar usuario com sucesso
    Dado que envio uma requisição "PUT" para o endpoint "/usuarios/5JqPK6Jer22TnTAZ" com os dados:
      | nome          | Fulano da Silva alt   |
      | email         | beltranoalt@qa.com.br |
      | password      | teste                 |
      | administrador | true                  |
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Registro alterado com sucesso |


  Cenario: Alterar usuario - Id não encontrado e Email já cadastrado
    Dado que envio uma requisição "PUT" para o endpoint "/usuarios/ABCDEF1234567890" com os dados:
      | nome          | Fulano da Silva alt |
      | email         | fulano@qa.com       |
      | password      | teste               |
      | administrador | true                |
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | message | Este email já está sendo usado |


  Cenario: Alterar usuario com sucesso - Id não encontrado e Email não cadastrado
    Dado que envio uma requisição "PUT" para o endpoint "/usuarios/ABCDEF1234567890" com os dados:
      | nome          | Fulano da Silva alt |
      | email         | [Gera Email]        |
      | password      | teste               |
      | administrador | true                |
    Entao devera retornar o status 201
    E a resposta deve incluir os seguintes valores:
      | message | Cadastro realizado com sucesso |