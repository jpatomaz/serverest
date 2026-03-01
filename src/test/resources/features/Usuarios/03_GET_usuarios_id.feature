#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - GET /usuarios/id

  Cenario: Efetuar consulta de usuário por ID com sucesso
    Dado que envio uma requisição "GET" para o endpoint "/usuarios/0uxuPY0cbmQhpEz1"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | nome          | Fulano da Silva  |
      | email         | fulano@qa.com    |
      | password      | teste            |
      | administrador | true             |
      | _id           | 0uxuPY0cbmQhpEz1 |

  Cenario: Efetuar consulta de usuário por id - Usuário não encontrado
    Dado que envio uma requisição "GET" para o endpoint "/usuarios/ABCDEF1234567890"
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | message | Usuário não encontrado |

