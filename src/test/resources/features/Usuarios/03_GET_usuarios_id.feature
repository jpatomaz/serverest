#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - GET usuarios_id

  Cenario: Efetuar consulta de usuário por ID com sucesso
    Dado que envio uma requisição "GET" para o endpoint "/usuarios/[DataUsuario.Id]"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | nome     | [DataUsuario.Nome]     |
      | email    | [DataUsuario.Email]    |
      | password | [DataUsuario.Password] |
      | _id      | [DataUsuario.Id]       |

  Cenario: Efetuar consulta de usuário por id - Usuário não encontrado
    Dado que envio uma requisição "GET" para o endpoint "/usuarios/ABCDEF1234567890"
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | message | Usuário não encontrado |

