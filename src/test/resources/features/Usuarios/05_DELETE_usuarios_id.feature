#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - DELETE usuarios_id

  Cenario: Efetuar a exclusão de usuário com sucesso
    Dado que envio uma requisição "DELETE" para o endpoint "/usuarios/[DataUsuario.Id]"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Registro excluído com sucesso |

  Cenario: Efetuar exclusão de usuário - Usuário não encontrado
    Dado que envio uma requisição "DELETE" para o endpoint "/usuarios/ABCDEF1234567890"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Nenhum registro excluído |