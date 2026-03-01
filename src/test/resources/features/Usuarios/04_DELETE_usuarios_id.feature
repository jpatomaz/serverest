#language: pt
#enconding: utf-8

@api
Funcionalidade: Usuarios - DELETE usuarios_id

  #Implementar a atualização de um id existente ao invés de deixar fixo
  Cenario: Efetuar a exclusão de usuário com sucesso
    Dado que envio uma requisição "DELETE" para o endpoint "/usuarios/YE1NNnkuHrEZm28G"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Registro excluído com sucesso |

  Cenario: Efetuar exclusão de usuário - Usuário não encontrado
    Dado que envio uma requisição "DELETE" para o endpoint "/usuarios/ABCDEF1234567890"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | message | Nenhum registro excluído |


  Cenario: Efetuar exclusão de usuário - Usuário com carrinho cadastrado
    Dado que envio uma requisição "DELETE" para o endpoint "/usuarios/0uxuPY0cbmQhpEz1"
    Entao devera retornar o status 400
    E a resposta deve incluir os seguintes valores:
      | message | Não é permitido excluir usuário com carrinho cadastrado |

