#language: pt
#enconding: utf-8

@eficha @us-3375 @membros
Funcionalidade: Membros - GET /api/membros/{id}/registros-disponiveis


  @CT-3544  @CT-3545 @desempenho
  Cenario: Verificar registros de Elogios e Deméritos disponíveis para membro
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/3575977/registros-disponiveis"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios   | true |
      | demeritos | true |

  @CT-3558  @CT-3559
  Cenario: Verificar registros de Elogios e Deméritos NÃO disponíveis para membro
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2745194/registros-disponiveis"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | elogios   | false |
      | demeritos | false |