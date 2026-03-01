#language: pt
#enconding: utf-8

@eficha
Funcionalidade: AcordosCorrecionais - GET /api/membros/{membroID}/acordos-correcionais/{id}

  @CT-4805 @desempenho
  Cenario: Consultar acordo por ID
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/acordos-correcionais/47"
    Entao devera retornar o status 200
    E a resposta deve incluir os seguintes valores:
      | id                 | 47                   |

  @CT-4806
  Cenario: 404 - Consultar acordo quando membroId for invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327790/acordos-correcionais/47"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Acordo Correcional não encontrado. |


  @CT-4807
  Cenario: 404 - Consultar acordo quando ID for invalido
    Dado que envio uma requisição "GET" para o endpoint "/api/membros/2327716/acordos-correcionais/000"
    Entao devera retornar o status 404
    E a resposta deve incluir os seguintes valores:
      | detail | Acordo Correcional não encontrado.|