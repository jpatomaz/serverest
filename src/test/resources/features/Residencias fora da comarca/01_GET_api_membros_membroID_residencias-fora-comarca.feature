#language: pt
#enconding: utf-8

@eficha @residencia
Funcionalidade: Residencias fora da comarca - GET /api/membro/{membroID}/residencias-fora-comarca

  @CT-4882 @desempenho
  Cenario: GET 200 - Verificar a lista de residência
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/residencias-fora-comarca"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | data | id=8 |

  @CT-4843 @desempenho
  Cenario: GET 404 - Verificar lista de acordos correcionais com membroID invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327710/residencias-fora-comarca"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Nenhuma autorização de residência encontrada. |